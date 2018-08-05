class CreateEmployments < ActiveRecord::Migration[5.2]
  def change
    create_table :employments do |t|
      t.date :start_date
      t.date :end_date
      t.string :company
      t.string :role
      t.text :description

      t.timestamps
    end
  end
end
