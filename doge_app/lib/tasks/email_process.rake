namespace :email_process do
  desc "sending emails to users"
  task :send => :environment do
    Confession.all.each do |confession|
    email_num = %w(1 2 3 4 5).sample

    case email_num
      when '1'
        mail_num = %w(1 2 3 4 5).sample

    case mail_num
      when '1'
        UserMailer.submitted_confession_email1(confession.email).deliver
      when '2'
        UserMailer.submitted_confession_email2(confession.email).deliver
      when '3'
        UserMailer.submitted_confession_email3(confession.email).deliver
      when '4'
        UserMailer.submitted_confession_email4(confession.email).deliver
      when '5'
        UserMailer.submitted_confession_email5(confession.email).deliver
    end

    puts "going to destroy this confession #{confession.id}"

    confession.destroy

    end
end
end
end


# get all email addresses
# define a function which chooses a random number between 1 and 10
# when number is equal to the random number, send all the emails and delete from the database
