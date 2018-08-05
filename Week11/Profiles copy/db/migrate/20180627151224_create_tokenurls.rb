class CreateTokenurls < ActiveRecord::Migration[5.2]
  def change
    create_table :tokenurls do |t|
      t.string :token
      t.timestamps
    end
  end
end
