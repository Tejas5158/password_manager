class User < ApplicationRecord
    validates :email, uniqueness: true
    validates :email, :password, presence: true
    validates :password, length: { in: 6..20 }
end
