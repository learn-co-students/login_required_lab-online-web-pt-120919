class SecretsController < ApplicationController
    before_action :require_login

    def show   
    end 

    private 

    def require_login 
        #redirect to login if youre not logged in, should show you the secret if youre logged in
        redirect_to '/login' unless current_user 
    end 
end 