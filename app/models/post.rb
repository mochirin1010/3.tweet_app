class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  validates :content, {presence: true, length: {maximum: 150}}
  validates :user_id, {presence: true}

  validates :image, {presence: true}

  def user
    return User.find_by(id: self.user_id)
  end
end
