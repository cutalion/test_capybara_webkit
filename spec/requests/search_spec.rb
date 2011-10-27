require 'spec_helper'

describe "Search" do
  before { @post1 = Factory :post, :title => 'One' }
  before { @post2 = Factory :post, :title => 'Two' }

  it "should get search results via AJAX", :js => true do
    puts Capybara.current_driver
    visit root_path

    page.should have_content "Home"
    page.should_not have_content "One"
    within(:xpath, "//form[@id='search_form']") do
      fill_in "Search", :with => 'One'
      click_button "Find"
    end

    # wait_until { page.has_content? "One" }
    page.should have_content "Home"
    page.should have_content "One"
  end
end
