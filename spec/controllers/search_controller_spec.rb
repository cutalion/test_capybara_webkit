require 'spec_helper'

describe SearchController do
  describe "GET show" do
    before { Factory :post, :title => 'One' }
    before { Factory :post, :title => 'Two' }
    
    it "should show posts found by title" do
      get :show, :search => "Two"
      assigns(:posts).should have(1).item
      assigns(:posts).first.title.should == "Two"
    end

    it "should show all posts when search string is empty" do
      get :show
      assigns(:posts).should have(2).items
    end
  end
end
