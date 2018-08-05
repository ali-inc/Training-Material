class CreateJoinTableCustomsProfiles < ActiveRecord::Migration[5.2]
  def change
    create_join_table :profiles, :customs do |t|
      
    end
  end
end
