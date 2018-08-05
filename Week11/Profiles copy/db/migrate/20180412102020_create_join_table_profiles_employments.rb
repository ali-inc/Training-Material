class CreateJoinTableProfilesEmployments < ActiveRecord::Migration[5.2]
  def change
    create_join_table :profiles, :employments do |t|
      # t.index [:profile_id, :employment_id]
      # t.index [:employment_id, :profile_id]
    end
  end
end
