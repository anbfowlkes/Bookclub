class ApplicationController < ActionController::Base
    def home
        render json: Book.all
    end
end
