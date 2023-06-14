class RemoveClubsToPost < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :clubhouse
  end
end
