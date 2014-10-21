class SessionsController < ApplicationController
  skip_before_filter :require_login

  def new
  end

  def create
    if @user = login(session_params[:email], session_params[:password])
      redirect_to :root
    else
      render :new
    end
  end

  def destroy
    logout
    redirect_to :root
  end

  def session_params
    params.permit(:email, :password)
  end
end
