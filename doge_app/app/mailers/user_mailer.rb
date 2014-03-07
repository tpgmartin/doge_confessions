class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def submitted_confession_email1(email)
    @email = email
    @url  = 'http://example.com/login'
    attachments.inline['doge_jesus.jpg'] = File.read("#{Rails.root}/public/doge_jesus.jpg")
    mail(to: @email, subject: 'The doge has read your confession!')
  end

  def submitted_confession_email2(email)
    @email = email
    @url  = 'http://example.com/login'
    attachments.inline['doge_jesus.jpg'] = File.read("#{Rails.root}/public/doge_jesus.jpg")
    mail(to: @email, subject: 'The doge has read your confession!')
  end

  def submitted_confession_email3(email)
    @email = email
    @url  = 'http://example.com/login'
    attachments.inline['doge_jesus.jpg'] = File.read("#{Rails.root}/public/doge_jesus.jpg")
    mail(to: @email, subject: 'The doge has read your confession!')
  end

  def submitted_confession_email4(email)
    @email = email
    @url  = 'http://example.com/login'
    attachments.inline['doge_jesus.jpg'] = File.read("#{Rails.root}/public/doge_jesus.jpg")
    mail(to: @email, subject: 'The doge has read your confession!')
  end

  def submitted_confession_email5(email)
    @email = email
    @url  = 'http://example.com/login'
    attachments.inline['doge_jesus.jpg'] = File.read("#{Rails.root}/public/doge_jesus.jpg")
    mail(to: @email, subject: 'The doge has read your confession!')
  end


end
