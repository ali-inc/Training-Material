class CreateSandwiches < ActiveRecord::Migration[5.2]
  def change
    create_table :sandwiches do |t|
      t.string :name
      t.string :filling
      t.integer :price

      t.timestamps
    end
  end
end
