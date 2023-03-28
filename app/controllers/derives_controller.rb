class DerivesController < ApplicationController
    before_action :authenticate_user!

    def index
        @derives = Derive.all
    end

    def show
    end

    def create
    @user = User.new(params[:user].permit(:name))
    puts verify_recaptcha(model: @user)
    if verify_recaptcha(model: @user) && @user.save
        redirect_to @user
    else
        render 'new'
    end
    end
end