class ApplicationController < ActionController::Base
    def home
        render json: { hello: "again" }
    end
end
