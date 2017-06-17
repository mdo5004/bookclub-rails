class BooksController < ApplicationController
    
    def search
        test_search = "https://www.goodreads.com/search/index.xml?key=U19zPpjBZNZMUrsjpA&q=Ender%27s+Game"
        
        results = GoodreadsService.books({key: "U19zPpjBZNZMUrsjpA", title: "ender's game"})
        
        BookSearchResult.destroy_all
        @books = results.collect do |result|
            BookSearchResult.create(result)
        end
        
        render json: @books
    end
    
end