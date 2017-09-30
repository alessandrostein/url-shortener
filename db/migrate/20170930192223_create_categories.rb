class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
    end

    Category.create(name: 'Developer')
    Category.create(name: 'Hoteis em Gramado')
    Category.create(name: 'Hoteis em Canela')
    Category.create(name: 'Hoteis para o Natal Luz Gramado')
    Category.create(name: 'Hoteis para Oktoberfest')
    Category.create(name: 'Hoteis para Oktoberfest 2017')
    Category.create(name: 'Hoteis para Oktoberfest Blumenau')
    Category.create(name: 'Hoteis para Oktoberfest São Paulo')
  end
end
