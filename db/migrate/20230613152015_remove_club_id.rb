class RemoveClubId < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :clubhouse_id
  end
end
