class UrlClick < ActiveRecord::Base

  belongs_to :url

  def to_s
    { id: id, url: url, browser: browser, platform: platform, ip: clicks, created_at: created_at, updated_at: updated_at }
  end

end
