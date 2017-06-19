class CommentsController < ApplicationController
    
    def index
        if params[:book_id]
            book = Book.find_by(id: params[:book_id])
            @comments = book.comments
        else
            @comments = Comment.all
        end
        render json: @comments
    end
    def create
        @comment = Comment.new(comments_params)
        if @comment.save
            render json: @comment, status:201
        else
            render status:400
        end
    end
    
    private
    def comments_params

        params.permit(:book_id, :username, :text, :page)
        
    end
end