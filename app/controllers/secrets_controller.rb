class SecretsController < ApplicationController
  before_action :logged_in?

  def secret

  end
end

private

def logged_in?

    return head(:forbidden) unless session.include? :name
end
