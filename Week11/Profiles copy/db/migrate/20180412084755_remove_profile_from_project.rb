class RemoveProfileFromProject < ActiveRecord::Migration[5.2]
  def change
    remove_reference :projects, :profile, foreign_key: true
  end
end
