class SessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]

  def new
  end

  def create
    if @user = login(params[:email], params[:password], params[:remember_me])
           redirect_to root_path
    else
      flash.now[:danger] = "Login failed! Please check your email and password."
      render 'new'
    end
  end

  def destroy
    logout
    flash[:success] = "Logged out."
    redirect_to root_path
  end
end
