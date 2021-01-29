class AddSmileIdToLikes < ActiveRecord::Migration[6.1]
  def change
    add_column :likes, :smile_id, :integer
    add_column :likes, :love_id, :integer
    add_column :likes, :sweat_id, :integer
  end
end
