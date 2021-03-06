class Order < ApplicationRecord
  belongs_to :customer
  validates :quantities, :day, presence: true
  validates_inclusion_of :delivery, in: [true, false]
end
