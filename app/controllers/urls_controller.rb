class UrlsController < ApplicationController

  def index
    @urls = Url.all.order("created_at desc")
  end

  def show
    redirect_to load_url.origin if load_url.increase_click!
  end

  private

  def load_url
    @url ||= Url.find_by(slug: params[:slug])
  end
end
