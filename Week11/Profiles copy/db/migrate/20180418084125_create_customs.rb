class CreateCustoms < ActiveRecord::Migration[5.2]
  def change
    create_table :customs do |t|
      t.string :title
      t.text :body
      t.string :user_id

      t.timestamps
    end
  end
end
