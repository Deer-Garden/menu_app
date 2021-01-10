class MainMenu < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name 
    validates :expiration
    validates :ingredient
    validates :recipe
    validates :kcal
    validates :image
  end
end
