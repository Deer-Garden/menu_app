class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :main_menus

  with_options presence: true do
    validates :nickname
    validates :email, uniqueness: true
    validates :password 
    validates :password_confirmation
  end
end
