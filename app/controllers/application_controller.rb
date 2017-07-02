class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def not_found
    redirect_to urls_path
  end
end
