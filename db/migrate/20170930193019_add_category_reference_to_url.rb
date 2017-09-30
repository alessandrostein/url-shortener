class AddCategoryReferenceToUrl < ActiveRecord::Migration[5.0]
  def change
    add_reference :urls, :category, foreign_key: true
    Url.update_all category_id: 1
  end
end
