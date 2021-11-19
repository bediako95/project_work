class UsersAuthentication < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :customers
  # has_many :gardeners
  validates :email, uniqueness: true
  validates :email, confirmation: true
end
