class UserMailer < ActionMailer::Base
  default from: "masomenost@gmail.com"

  def welcome_email(user)
  	@user = user
  	@url = 'https://twitter.com/Mardiniii'
    mail(to: @user.email, subject: 'Welcome to My Awesome Thunder Site')
  end
end
