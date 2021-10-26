class Feedback < ApplicationRecord
  validates :name,:customer_name, :phone_number, presence: true
end
