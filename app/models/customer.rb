class Customer < ApplicationRecord

  def self.find_or_create(name, surname, email, phonenumber, adress, city, postalcode)
    customer = self.find_by_email(email)
    return customer unless customer.nil?

    self.create(name: name, surname: surname, email: email, phonenumber: phonenumber, adress: adress, city: city, postalcode: postalcode)
  end
end


