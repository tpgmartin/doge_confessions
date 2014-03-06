class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def submitted_confession_email(email)
    @email = email
    @url  = 'http://example.com/login'
    mail(to: @email, subject: 'The doge has read your confession!')
  end
end
