class SecretsController < ApplicationController
    before_action :require_log_in
    def index
    end

    def show
       
    end
    
    private
    def require_log_in
        redirect_to '/login' unless current_user
      end

end
