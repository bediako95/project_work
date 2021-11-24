class Customer < ApplicationRecord
  belongs_to :client
  validates :client_id, uniqueness: true
  validates :first_name, :last_name, :residential_address, :phone, presence: true
  validates :phone, length: { is: 10 }
  validates :first_name, :last_name, :residential_address, length: { minimum: 3 }
  validates :phone, numericality: { only_integer: true }
  validates :phone, uniqueness: true
end
