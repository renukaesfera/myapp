class ContactMailer < ApplicationMailer

  default :to => "renuka_chauhan@esferasoft.com"

  def new_contact(contact)
    @contact = contact
    mail(:message => "#{contact.message}")
  end
end
