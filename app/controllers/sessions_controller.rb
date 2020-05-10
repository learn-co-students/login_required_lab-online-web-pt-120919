class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].nil? && !params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/welcome'
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:name] = nil if session[:name]
    redirect_to root_path
  end

  def hello

  end 
end
