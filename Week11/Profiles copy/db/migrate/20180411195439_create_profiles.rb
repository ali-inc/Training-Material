class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text :summary
      t.string :degree

      t.timestamps
    end
  end
end
