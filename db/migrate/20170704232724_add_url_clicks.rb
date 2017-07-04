class AddUrlClicks < ActiveRecord::Migration[5.0]
  def change
    create_table :url_clicks do |t|
      t.references :url, index: true, foreign_key: true
      t.string :browser
      t.string :platform
      t.string :ip

      t.timestamps
    end
  end
end
