require 'spec_helper'

describe "routing to Home" do
  it "routes / to home#index" do
    { :get => "/" }.should route_to( :controller => "home", :action => "index" )
  end
end

