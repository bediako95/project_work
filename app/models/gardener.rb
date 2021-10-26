class Gardener < ApplicationRecord
  # belongs_to :users_authentication
  validates :first_name, :last_name, :residential_address, :phone, presence: true

end
