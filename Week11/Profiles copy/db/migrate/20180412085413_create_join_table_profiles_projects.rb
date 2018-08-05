class CreateJoinTableProfilesProjects < ActiveRecord::Migration[5.2]
  def change
    create_join_table :profiles, :projects do |t|
      # t.index [:profile_id, :project_id]
      # t.index [:project_id, :profile_id]
    end
  end
end
