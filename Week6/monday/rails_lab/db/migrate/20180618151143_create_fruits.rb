class CreateFruits < ActiveRecord::Migration[5.2]
  def change
    create_table :fruits do |t|
      t.string :name
      t.integer :energy
      t.float :carbohydrates
      t.float :fat
      t.float :protein
      t.string :picture
      t.text :countries

      t.timestamps
    end
  end
end
