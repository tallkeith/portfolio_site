class UserMailer < ActionMailer::Base
  default from: "foopmctester@gmail.com"


  def welcome_email(user)
  	@user = user
  	@url = 'http://tallkeith.com/login'
  	mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  



end
