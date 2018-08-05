class AddUserIdToCertification < ActiveRecord::Migration[5.2]
  def change
    add_column :certifications, :user_id, :string
  end
end
