class UrlsController < ApplicationController

  def index
    @urls = Url.all.order("created_at desc")
  end

  def show
    if load_url.nil?
      redirect_to urls_path
    else
      load_url.url_clicks.create!(browser: request.headers["User-Agent"], ip: request.ip)
      redirect_to load_url.origin if load_url.increase_click!
    end
  end

  private

  def load_url
    @url ||= Url.find_by(slug: params[:slug])
  end
end
