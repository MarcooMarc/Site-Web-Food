class Order < ApplicationRecord
  belongs_to :customer
  validates :quantities, :delivery, :day, presence: true
end


