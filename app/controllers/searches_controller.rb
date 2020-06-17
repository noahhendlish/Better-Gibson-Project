class SearchesController < ApplicationController
    def new
      @search = Search.new
    end
    
    def create
      @search = Search.create!(params.require(:search).permit!) 
      #@search = Search.create!(params[:search])
      redirect_to @search
    end
    
    def show
      @search = Search.last
      @search.courses
    end
end
