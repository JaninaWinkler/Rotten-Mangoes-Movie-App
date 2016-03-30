class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def account_destroyed_email(user)
    @user = user
    mail(to: @user.email,
         subject: 'Account Destroyed',
         template_path: 'user_mailer',
         template_name: 'account_destroyed_email')
    end

end
