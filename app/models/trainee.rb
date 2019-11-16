class Trainee < ApplicationRecord
  validates :name, presence: true
  validates :surname, presence: true

  def self.find_or_create(name, surname, email, phonenumber)
    customer = self.find_by_email(email)
    return customer unless customer.nil?

    self.create(name: name, surname: surname, email: email, phonenumber: phonenumber)
  end
end
