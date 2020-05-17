class SessionsController < ApplicationController

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
    end

  end

  def destroy
    if !session[:name]
      session[:name]
    else
      session.delete :name
    end
  end
end