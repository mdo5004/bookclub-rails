class CommentsController < ApplicationController
    def index
        if params[:book_id]
            book = Book.find_by(book_id: params[:book_id])
            @comments = book.comments
        else
            @comments = Comment.all
        end
        render json: @comments
    end
    def create
        
    end
end