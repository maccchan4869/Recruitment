class User < ApplicationRecord
    has_secure_password

    validates :login_id, presence: true, uniqueness: true
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
