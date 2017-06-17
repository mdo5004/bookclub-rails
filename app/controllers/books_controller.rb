class BooksController < ApplicationController
    def search
        test_search = "https://www.goodreads.com/search/index.xml?key=U19zPpjBZNZMUrsjpA&q=Ender%27s+Game"
        @books = GoodreadsService.books({key: "U19zPpjBZNZMUrsjpA", title: "ender's game"})
        
        render json: @books
    end
end