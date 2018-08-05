class AddProfileidToTokenurls < ActiveRecord::Migration[5.2]
  def change
    add_column :tokenurls, :profile_id, :integer
  end
end
