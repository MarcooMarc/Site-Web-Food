class BookingsController < ApplicationController
  
  def index
    @booking = Booking.all
    @workshop = Workshop.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    trainee = Trainee.find_or_create(params[:trainee][:email], params[:trainee][:name],
    params[:trainee][:surname], params[:trainee][:phonenumber])
    @booking.trainee = trainee
    @booking.save
    flash[:notice] = "Votre atelier est validée vous allez recevoir un e-mail"
    redirect_to root_path
  end

  private

  def participant_params
    params.require('trainee').permit(:name)
    params.require('trainee').permit(:surname)
    params.require('trainee').permit(:email)
    params.require('trainee').permit(:phonenumber)
  end
end
