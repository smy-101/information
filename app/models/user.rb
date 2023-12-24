# typed: true
class User < ApplicationRecord
  validates :email, presence: true
end
