class AddStreamToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :stream, :string
  end
end
