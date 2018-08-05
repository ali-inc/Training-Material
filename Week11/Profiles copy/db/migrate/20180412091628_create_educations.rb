class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.date :start_date
      t.date :end_date
      t.string :institution
      t.string :course
      t.text :description

      t.timestamps
    end
  end
end
