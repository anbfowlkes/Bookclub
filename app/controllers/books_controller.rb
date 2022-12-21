class BooksController < ApplicationController

    def home
        render json: Book.all
    end

    def show
        item = Book.find_by(id: params[:id])
        render json: item
    end

    def destroy
        book = Book.find_by(id: params[:id])
        if book.destroy
            render json: book
        else
            render json: {error: book.errors.full_messages}, status: 422
            # render json: {}
        end
    end

end
