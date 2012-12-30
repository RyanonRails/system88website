class PagesController < ApplicationController
  def contact
    if request.post? && params[:negative_captcha].blank?
      ContactMailer.contact_us(params[:name], params[:email], params[:msg]).deliver
      flash.now[:success] = "An email has been sent. Thanks for contacting System88!"
    end
  end
end
