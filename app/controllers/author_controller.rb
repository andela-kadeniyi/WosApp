class AuthorController < ApplicationController
  def index
    @authors = Author.all.includes(:articles)
  end
end
