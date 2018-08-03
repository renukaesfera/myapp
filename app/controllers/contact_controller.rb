class ContactController < ApplicationController
    def new
  	 @contact=Contact.new
    end

    def create
    	@contact=Contact.new(contact_param)

      if @contact.valid?
        ContactMailer.new_contact(@contact).deliver
	      flash[:sucess]="Thanks for you respose"
	      redirect_to root_path

      else
	      flash[:alert]="cannot send message"
	      render 'new'
      end
    end
    
  private
 
    def contact_param
 	   params.require(:contact).permit(:name,:email,:message)
    end
end
