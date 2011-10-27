require 'spec_helper'

describe "routing to Search" do
  it "routes /search to search#show" do
    { :get => "/search" }.should route_to( :controller => "search", :action => "show" )
  end
end
