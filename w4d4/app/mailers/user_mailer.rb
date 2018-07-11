class UserMailer < ApplicationMailer
  default from: 'from@example.com'

  def welcome_email(user)
    @user = user
    @url = 'https://www.appacademy.io/'
    mail(to: user.email, from: 'everybody@appacademy.io', subject: 'Welcome to App Academy!')
  end

end
