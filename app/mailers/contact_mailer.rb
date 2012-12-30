class ContactMailer < ActionMailer::Base
  def contact_us(name, email, msg)
    mail(to: "ryan@system88.com", from: "contact@system88.com", subject: "Contact from #{name}") do |format|
      format.text { render text: "Email: #{email}\nMessage: #{msg}" }
    end
  end
end