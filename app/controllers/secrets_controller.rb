class SecretsController < ApplicationController
    def show 
       if !logged_in 
        redirect_to "/login" 
       else 
        render template: 'secrets/show'
    end 
end 
end 