class UserMailer < ApplicationMailer
  def welcome_email
    @code = '123456'
    mail(to: "shimy1011@foxmail.com", subject: 'hi,smy')
  end
end
