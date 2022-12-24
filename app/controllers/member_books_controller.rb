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
end
