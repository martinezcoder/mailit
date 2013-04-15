class UserMailer < ActionMailer::Base
default :from => "\"Fran J Martinez\" <fran.martinez@socialwin.es>"

def registration_confirmation(user)
	@user = user
	mail(:to => "#{@user.name} <#{@user.email}>", :subject => "Bienvenido a SocialWin Analytics")
end

def welcome_email(user)
  @user = user
  mail(:to => "#{@user.name} <#{@user.email}>", :subject => "Bienvenido a SocialWin Analytics")
end


end
