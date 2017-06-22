class Service::UrlShortener

  BASE_URL = "http://alessandrostein.com"

  def self.call(slug)
    "#{BASE_URL}/#{slug}"
  end

end
