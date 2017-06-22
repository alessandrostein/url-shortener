class Service::SlugGenerator

  def self.call(identifier)
    identifier.to_s(36)
  end

end
