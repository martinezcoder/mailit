namespace :db do


  desc "send email after process"
  task send: :environment do
    puts "hola"
  end
  
  desc "send email after process"
  task send_email: :environment do
    send_message
  end

  def send_message
    @user = User.first
    UserMailer.welcome_email(@user).deliver
  end

end