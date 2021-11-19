class Feedback < ApplicationRecord
  validates :name,:customer_name, :phone_number, presence: true
  validates :phone_number, :length => { :is => 10 }
  validates :name,:customer_name, :last_name,:residential_address,  :length => { :minimum => 5 }
  validates :phone_number, :numericality => true
end
