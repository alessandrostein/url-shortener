class AddTitleAndDescriptionToUrl < ActiveRecord::Migration[5.0]
  def change
    add_column :urls, :title, :string
    add_column :urls, :description, :string
  end
end
