class User < ApplicationRecord
    validates, :email, :session_token, :password_digest, presence: true
    validates, :password, length: {minimum: 6, allow_nil: true}

    attr_reader :password

    def self.find_by_credentials(email, password)
      user =
end
