class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true, presence: true
  # validates :password, presence: true

  enum role: %w(regular admin)
end
