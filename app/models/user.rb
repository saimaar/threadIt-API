class User < ApplicationRecord
  has_secure_password
  has_one :cart, dependent: :destroy
  has_many :orders
end
