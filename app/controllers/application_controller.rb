class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :define_meta_tags!

  private

  def define_meta_tags!
    @meta = {
      title: 'Your short url with shre.xyz',
      description: 'A awesome list of links shared'
    }
  end

end
