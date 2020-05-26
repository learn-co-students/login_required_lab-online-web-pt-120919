class SecretsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:show]
    def index
    end

    def show
        # if current_user
        #     render :show
        #   else
        #     redirect_to '/login'
        #   end
    end

    private 
   def require_login
    ontroller: 'sessions', action: 'login' unless current_user
    end
end
