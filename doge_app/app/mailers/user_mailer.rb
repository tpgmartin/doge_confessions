class UserMailer < ActionMailer::Base
  default from: "god@doge.com"

  def submitted_confession_email1(email)
    @email = email
    @url  = 'http://example.com/login'
    attachments.inline['doge1.jpg'] = File.read("#{Rails.root}/public/doge1.jpg")
    mail(to: @email, subject: 'Much judgement')
  end

  def submitted_confession_email2(email)
    @email = email
    @url  = 'http://example.com/login'
    attachments.inline['doge2.jpg'] = File.read("#{Rails.root}/public/doge2.jpg")
    mail(to: @email, subject: 'Much judgement')
  end

  def submitted_confession_email3(email)
    @email = email
    @url  = 'http://example.com/login'
    attachments.inline['doge3.jpg'] = File.read("#{Rails.root}/public/doge3.jpg")
    mail(to: @email, subject: 'Much judgement')
  end

  def submitted_confession_email4(email)
    @email = email
    @url  = 'http://example.com/login'
    attachments.inline['doge4.jpg'] = File.read("#{Rails.root}/public/doge4.jpg")
    mail(to: @email, subject: 'Much judgement')
  end

  def submitted_confession_email5(email)
    @email = email
    @url  = 'http://example.com/login'
    attachments.inline['doge5.jpg'] = File.read("#{Rails.root}/public/doge5.jpg")
    mail(to: @email, subject: 'Much judgement')
  end


end
