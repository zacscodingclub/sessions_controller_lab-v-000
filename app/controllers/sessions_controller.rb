class SessionsController < ApplicationController

  def create
    if params[:name].blank?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to sessions_new_path
  end
end
