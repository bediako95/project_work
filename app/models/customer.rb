class Customer < ApplicationRecord
  belongs_to :client
  validates :client_id, uniqueness: true
  validates :first_name, :last_name,:residential_address,:phone, presence: true
end
