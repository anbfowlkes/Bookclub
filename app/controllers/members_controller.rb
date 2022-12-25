class MembersController < ApplicationController

    def home
        render json: Member.all
    end

    

end
