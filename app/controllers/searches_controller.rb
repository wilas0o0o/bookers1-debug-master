class SearchesController < ApplicationController
  def search
    @content = params[:content]
    if params[:user] == "\uf007"
      @model = params[:user]
      @records = User.search_for(@content)
    elsif params[:book] == "\uf02d"
      @model = params[:book]
      @records = Book.search_for(@content)
    end
  end
end