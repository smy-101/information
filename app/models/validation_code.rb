class ValidationCode < ApplicationRecord
  validates :email, presence: true

  before_create :generate_code
  after_create :send_eamil

  enum kind: { sign_in: 0, sign_up: 1 }

  def generate_code
    self.code = SecureRandom.random_number.to_s[2..7]
  end
  def send_eamil
    UserMailer.welcome_email(self.email)
  end
end
