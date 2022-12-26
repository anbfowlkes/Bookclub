class MembersController < ApplicationController

    def home
        render json: Member.all
    end

    def show
        member = Member.find_by(id: params[:id])
        render json: member
    end

    def destroy
        member = Member.find_by(id: params[:id])
        if member.destroy
            render json: member
        else
            render json: {error: member.errors.full_messages}, status: 422
            # render json: {}
        end
    end

    def create
        member = Member.create!(member_params)
    end

    private

    def member_params
        params.permit(:name, :active, :image)
    end

end
