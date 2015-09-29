class AuthorController < ApplicationController
  def index
    @authors = Author.paginate(:page => params[:page], :per_page => 20).includes(:articles)
  end
end
