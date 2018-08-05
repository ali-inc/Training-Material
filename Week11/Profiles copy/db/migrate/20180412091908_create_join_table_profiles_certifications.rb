class CreateJoinTableProfilesCertifications < ActiveRecord::Migration[5.2]
  def change
    create_join_table :profiles, :certifications do |t|
      # t.index [:profile_id, :certification_id]
      # t.index [:certification_id, :profile_id]
    end
  end
end
