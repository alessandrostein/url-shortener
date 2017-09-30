class Category < ActiveRecord::Base

  has_many :urls

  before_create :set_slug!

  def to_s
    { id: id, name: origin, slug: slug }
  end

  private

  def set_slug!
    self.slug = name.parameterize
  end

end
