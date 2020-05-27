class SessionsController < ApplicationController
    def create 
        #redirect to login if name is nil, redirect to login if name is empty
        #sets session[:name] if name was given
        if params[:name] == nil || params[:name].empty?
            redirect_to '/login'
        else 
            session[:name] = params[:name]
        end 
    end 

    def destroy 
        #leaves session [:name] nil if it was not set
        #clears sesion[:name] if it was set
        if session[:name] = nil
            redirect_to '/login'
        else 
            session.delete :name
        end 
    end 
end 