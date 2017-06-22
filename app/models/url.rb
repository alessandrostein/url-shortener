class Url < ActiveRecord::Base

  def to_s
    { id: id, origin: origin, slug: slug, clicks: clicks, created_at: created_at, updated_at: updated_at }
  end

  def increase_click!
    update_attribute(:clicks, clicks + 1)
  end
end
