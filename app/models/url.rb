class Url < ActiveRecord::Base

  has_many :url_clicks
  belongs_to :category

  before_create :define_uniq_slug!, if: ->() { slug.blank? }
  before_create :set_url_details!, if: ->() { title.blank? && description.blank? }

  scope :recents, -> { order(created_at: :desc).limit(10) }

  def to_s
    { id: id, origin: origin, slug: slug, clicks: clicks, created_at: created_at, updated_at: updated_at }
  end

  def increase_click!
    update_attribute(:clicks, clicks + 1)
  end

  private

  def define_uniq_slug!
    self.slug = Service::SlugGenerator.call(slug)
  end

  def set_url_details!
    page = MetaInspector.new(self.origin)
    self.title = page.title
    self.description = page.description
  end
end
