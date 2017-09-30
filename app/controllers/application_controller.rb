class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :define_title!

  private

  def define_title!
    @title = 'Your short url with shre.xyz'
  end

end
