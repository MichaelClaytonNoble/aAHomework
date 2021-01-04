class User < ApplicationRecord
  validates :username, :session_token, presence: true
  validates :password_digest, presence: true, message: 'Password can''t be blank' 
  validate :password_digest_length

  private
  def password_digest_length
  end 

  
end
