class MemberBooksController < ApplicationController

    # def index
    #     x = Member.all
    #     y = []
    #     x.length.times do |i|
    #         y[i] = x[i].books
    #     end
    #     render json: y
    # end


    def index
        render json: Member.all, each_serializer: FavoriteSerializer
    end

    def show
        item = Member.find_by(id: params[:id])
        render json: item, serializer: FavoriteSerializer
    end

    def create
        connection = BookMember.create!(member_book_params)
    end     


    private

    def member_book_params
        params.permit(:member_id, :book_id)
    end


end
