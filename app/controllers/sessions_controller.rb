class SessionsController < ApplicationController
    def index
        if current_user
            redirect_to secret_path
        else
            redirect_to login_path
        end
    end

    def new
    end

    def create
        if params[:name] && params[:name] != ""
            session[:name] = params[:name]
            redirect_to secret_path
        else
            redirect_to login_path
        end
    end

    def destroy
        session.delete :name
        redirect_to login_path
    end
end