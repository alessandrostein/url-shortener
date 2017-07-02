class Service::UrlShortener

  BASE_URL = "http://shre.xyz"

  def self.call(slug)
    "#{BASE_URL}/#{slug}"
  end

end
