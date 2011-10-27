TestCapybaraWebkit::Application.routes.draw do
  root :to => "home#index"
  resource :search, :controller => :search, :only => :show   
end
