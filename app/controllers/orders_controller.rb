class OrdersController < ApplicationController
  def index
    @order = Order.all
    @home = Home.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(commande_params)
    customer = Customer.find_or_create(params[:customer][:name], params[:customer][:surname], params[:customer][:email],
    params[:customer][:phonenumber], params[:customer][:adress], params[:customer][:city], params[:customer][:postalcode])
    @order.customer = customer
    @order.save
    flash[:notice] = "Votre commande est validée vous allez recevoir un e-mail"
    redirect_to root_path
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end

  private

  def commande_params
    params.require('order').permit(:quantities, :delivery)
  end

  def customer_params
    params.require('customer').permit(:name, :surname, :email, :phonenumber, :adress, :city, :postalcode)
  end
end