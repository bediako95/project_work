class Gardener < ApplicationRecord
  # belongs_to :users_authentication
  validates :first_name, :last_name, :residential_address, :phone, presence: true
  validates :phone, length: { is: 10 }
  validates :first_name, :last_name, :residential_address, length: { minimum: 5 }
  validates :phone, numericality: true

end
