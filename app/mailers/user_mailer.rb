class UserMailer < ApplicationMailer
  def welcome_email(email)
    validation_code = ValidationCode.order(created_at: :desc).find_by_email(email)
    @code = validationCode.code
    mail(to: email, subject: '验证码')
  end
end
