class BooksController < ApplicationController
    def index
        @books = Book.visible
        render json: @books
    end
    
    def show
    end

    def search

        results = GoodreadsService.search(params[:q])
        puts "Received request for #{params[:q]}"
        puts results.to_s
        BookSearchResult.destroy_all
        @books = results.collect do |result|
            BookSearchResult.create(result)
        end

        render json: @books
    end

    def create
        @book = Book.find_by(title: books_params[:title]) || Book.new(books_params)
        if @book.save
            @book.update(visible: true)
            render json: @book, status:201
        else
            render status:400
        end
    end

    def update
        @book = Book.find(params[:id])
        @book.update(visible: false)
        render status: 201
    end
    def destroy
        
    end
    
    private
    def books_params

        params.permit(:title, :publication_year, :average_rating, :image_url, :small_image_url)

    end


end