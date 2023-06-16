class AddCreatorToClubhouse < ActiveRecord::Migration[7.0]
  def change
    add_column :clubhouses, :creator_id, :integer
  end
end
