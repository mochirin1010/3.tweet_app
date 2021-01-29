class ChangeToLikes < ActiveRecord::Migration[6.1]
  def change
    remove_column :likes, :smile_id, :integer
    remove_column :likes, :love_id, :integer
    remove_column :likes, :sweat_id, :integer
  end
end
