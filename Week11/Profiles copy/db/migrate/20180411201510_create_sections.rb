class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :title
      t.text :description
      t.text :skills

      t.timestamps
    end
  end
end
