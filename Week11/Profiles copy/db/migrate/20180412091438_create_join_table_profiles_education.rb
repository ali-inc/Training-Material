class CreateJoinTableProfilesEducation < ActiveRecord::Migration[5.2]
  def change
    create_join_table :profiles, :educations do |t|
      # t.index [:profile_id, :education_id]
      # t.index [:education_id, :profile_id]
    end
  end
end
