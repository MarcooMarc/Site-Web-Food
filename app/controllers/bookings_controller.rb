class BookingsController < ApplicationController
  
  def index
    @booking = Booking.all
    @workshop = Workshop.all
  end

  def new
    @home = Home.all
    @booking = Booking.new
    @workshop_id = params[:workshop_id]
    workshop_price = Workshop.find(@workshop_id).price
    workshop = Workshop.find(@workshop_id).title
    @booking.price = workshop_price
    @booking.workshop = workshop   
  end

  def create
    @workshop_id = params[:booking][:workshop_id]
    workshop_title = Workshop.find(@workshop_id).title
    workshop_price = Workshop.find(@workshop_id).price
    @booking = Booking.new
    trainee = Trainee.find_or_create(params[:trainee][:email], params[:trainee][:name],
    params[:trainee][:surname], params[:trainee][:phonenumber])
    @booking.trainee = trainee
    @booking.workshop = workshop_title
    @booking.price = params[:booking][:seat].to_i * workshop_price.to_i
    @booking.seat = params[:booking][:seat]
    @booking.save  
    redirect_to workshops_path
    workshop = Workshop.find(@workshop_id)
    seats = params[:booking][:seat].to_i
    update_available_seat(workshop, seats)
  end

  def update_available_seat(workshop, seats)
    if workshop.seat < seats 
      flash[:alert] = "Désolé, il n'y a plus assez de place."
    else
      workshop.seat -= seats
      workshop.save!
      flash[:notice] = "Votre atelier est validée vous allez recevoir un e-mail"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def workshop_params
    params.require('booking').permit(:seat, :workshop_id)
    params.require('booking').permit(:price, :workshop_id)
    params.require('booking').permit(:workshop, :workshop_id)
  end

  def participant_params
    params.require('trainee').permit(:name)
    params.require('trainee').permit(:surname)
    params.require('trainee').permit(:email)
    params.require('trainee').permit(:phonenumber)
  end
end
