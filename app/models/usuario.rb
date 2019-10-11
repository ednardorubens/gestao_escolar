class Usuario < ApplicationRecord
  has_secure_password
  validates :nome, presence: true
end
