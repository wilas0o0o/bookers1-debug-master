class SearchesController < ApplicationController
  def search
    @content = params[:content]
    @model = params[:model]
    if @model == "user"
      @records = User.search_for(@content)
    elsif @model == "book"
      @records = Book.search_for(@content)
    end
  end
end
