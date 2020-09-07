class ContactsController < ApplicationController
  require 'mail_form'
  invisible_captcha only: [:create, :update], honeypot: :subtitle

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'Cannot send message'
      render 'contacts/new'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message, :subtitle)
  end
end
