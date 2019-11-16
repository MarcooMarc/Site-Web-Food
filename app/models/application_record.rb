class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

def self.find_or_create(customer_params)
  customer = self.find_by_email(customer_params[:email])

  return customer unless customer.nil?

  self.create(customer_params)
end
