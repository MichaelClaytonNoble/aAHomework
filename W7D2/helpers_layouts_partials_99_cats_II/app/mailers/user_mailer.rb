class UserMailer < ApplicationMailer
  default from: "App Academy Student <everybody@appacademy.io>"

  def welcome_email(user)
    @user = user
    @url = 'http://kitty-rentals.com/login'
    mail(to: @user.username , subject: 'Welcome to Kitty-Rentals')
  end
end
