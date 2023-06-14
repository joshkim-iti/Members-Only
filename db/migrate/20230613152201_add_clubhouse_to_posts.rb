class AddClubhouseToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :clubhouse, null: false, foreign_key: true
  end
end
