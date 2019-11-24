class ContactsController < ApplicationController
  def index
    @home = Home.all
  end
    

  def new
    @contact = Contact.new
    @home = Home.new
  end

  def create
    @contact = Contact.new params[:contact]

    if @contact.valid?
      Mailer.contact_form(@contact).deliver # Je vais expliquer cette ligne juste après...
      redirect_to contacts_path, flash: {success: t(:"create.message_has_been_sent")}
    else
      render :new
    end
  end
end
