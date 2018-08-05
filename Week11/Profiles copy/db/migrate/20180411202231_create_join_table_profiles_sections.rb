class CreateJoinTableProfilesSections < ActiveRecord::Migration[5.2]
  def change
    create_join_table :profiles, :sections do |t|
      # t.index [:profile_id, :section_id]
      # t.index [:section_id, :profile_id]
    end
  end
end
