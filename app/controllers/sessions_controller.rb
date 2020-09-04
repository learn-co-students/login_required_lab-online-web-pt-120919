class SessionsController < ApplicationController
    def new
      
end 

    def create
        if params[:name].empty?
            redirect_to "/login"
        else 
        session[:name] = params[:name]
        render "secrets/show"
    end 
end 

def destroy
    if logged_in
    session.delete :name
    end 
end 

end 