class CreateTableUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :urls do |t|
      t.string :origin
      t.string :slug
      t.integer :clicks, :default => 0

      t.timestamps
    end
  end
end
