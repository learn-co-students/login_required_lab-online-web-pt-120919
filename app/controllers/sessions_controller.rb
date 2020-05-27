class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:hello, :welcome, :new, :create, :destroy]

  def hello
    redirect_to '/login'
  end 

  def welcome 
  end

  def secret 
  end

  def new
  end

  def create
    if session[:name] && session[:name] != ""
      redirect_to '/welcome'
    elsif params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to '/welcome'
    else 
      redirect_to '/login'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end

  def require_login
    return head(:forbidden) unless session.include? :name
  end

end