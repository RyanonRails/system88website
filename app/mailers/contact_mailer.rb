class ContactMailer < ActionMailer::Base
  def contact_us(contact)
    mail(to: "ryan@system88.com", from: contact.from, subject: "Contact from #{contact.full_nume}") do |format|
      format.text { render text: contact.message }
    end
  end
end