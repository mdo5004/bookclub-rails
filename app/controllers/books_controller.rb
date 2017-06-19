class BooksController < ApplicationController
    
    def search
        
        results = GoodreadsService.search(params[:q])
        puts "Received request for #{params[:q]}"
        BookSearchResult.destroy_all
        @books = results.collect do |result|
            BookSearchResult.create(result)
        end
        
        render json: @books
    end
    
    def create
        
    end
    def index
        @books = Book.all
        render json: @books
    end
    def show
    end
end