class AddUserIdToEmployment < ActiveRecord::Migration[5.2]
  def change
    add_column :employments, :user_id, :string
  end
end
