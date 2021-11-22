class Feedback < ApplicationRecord
  validates :gardener_name, :customer_name, :phone_number, presence: true
  validates :phone_number, length: { is: 10 }
  validates :gardener_name, :customer_name, length: { minimum: 4 }
  validates :phone_number, numericality: true
end
