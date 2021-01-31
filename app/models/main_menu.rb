class MainMenu < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :likes

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  with_options presence: true do
    validates :name 
    validates :expiration
    validates :ingredient
    validates :recipe
    validates :kcal
    validates :image
  end
end
