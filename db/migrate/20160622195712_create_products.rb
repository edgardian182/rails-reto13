class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price

      t.timestamps null: false
    end

    create_table :categories do |t|
      t.string :name

      t.timestamps null: false
    end

    create_table :products_categories do |t|
      t.belongs_to :product, index: true
      t.belongs_to :category, index:true
    end
  end

end
