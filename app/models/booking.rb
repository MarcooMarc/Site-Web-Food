class Booking < ApplicationRecord
  belongs_to :trainee
  validates :seat, presence: true
 
end
