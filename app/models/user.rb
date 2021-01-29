class User < ApplicationRecord
  has_secure_password

  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :introduction, {length: {maximum: 150}}

  def posts
    return Post.where(user_id: self.id)
  end
end
