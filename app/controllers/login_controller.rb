class LoginController < ApplicationController

    before_action :set_user, only: [:update_user, :add]

    def show
        @user=User.find(params[:id])
    end

    def index
        @users=User.all
    end

    def new
        new=User.new
    end

    def create
    
    end

    def search

    end

    def add
        # set_user
        @button_titile = "this is custome"
    end

    def update_user

        # update action here
        # set_user

        service = Services::UserService.new(@user, params[:user])
        service.update_user

        redirect_to login_url

    end

    def set_user
        @user = User.find(params[:id])
    end
end
