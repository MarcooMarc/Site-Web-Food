class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params[:customer])
    @customer.save
  end

private

  def userparams
    params.require(:customer).permit(:content)
  end
end
