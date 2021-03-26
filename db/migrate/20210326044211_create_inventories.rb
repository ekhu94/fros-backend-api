class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.string :name
      t.float :price
      t.boolean :mens
      t.string :front_URL
      t.string :back_URL

      t.timestamps
    end
  end
end
