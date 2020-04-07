class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates_presence_of :password, require: true

  enum role: %w(basic admin)
  # enum role: [:default, :admin ]
  # enum role: {default: 0, admin: 1, super_admin: 2 }

  has_secure_password
end
