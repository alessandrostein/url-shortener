class Service::SlugGenerator

  def self.call(identifier)
    SecureRandom.hex(2)
  end

end
