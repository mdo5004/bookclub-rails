class BooksController < ApplicationController
    def index
        @books = Book.all
        render json: @books
    end
    def show
    end

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
        @book = Book.new(books_params)
        if @book.save
            render json: @book, status:201
        else
            render status:400
        end
    end

    private
    def books_params

        params.permit(:title, :publication_year, :average_rating, :image_url, :small_image_url)

    end


end