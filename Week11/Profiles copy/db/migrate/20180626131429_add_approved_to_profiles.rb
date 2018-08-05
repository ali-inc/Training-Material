class AddApprovedToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :approved_by, :string
  end
end
