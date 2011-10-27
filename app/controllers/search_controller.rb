class SearchController < ApplicationController
  def show
    @posts = params[:search].to_s.empty? ? Post.all : Post.where(:title => params[:search])
    render @posts
  end
end
