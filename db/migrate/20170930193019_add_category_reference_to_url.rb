class AddCategoryReferenceToUrl < ActiveRecord::Migration[5.0]
  def change
    add_reference :urls, :category, foreign_key: true    
  end
end
