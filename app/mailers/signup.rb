
class Signup < ActionMailer::Base
  default from: 'marlondiego407@gmail.com'
  def confirm_email(user)
      @user = user
      @confirmation_link = confirmation_url({
        token: @user.confirmation_token
      })
      mail({
        to: user.email,
        bcc: ['sign ups <signups@colcho.net>'],
        subject: I18n.t('signup.confirm_email.subject')
      })
  end
end