class AddHeadingToCustoms < ActiveRecord::Migration[5.2]
  def change
    add_column :customs, :heading, :string
  end
end
