class ConfessionsController < ApplicationController
  # GET /confessions
  # GET /confessions.json
  def index


  end

  # GET /confessions/1
  # GET /confessions/1.json
  def show

  end

  def create
    mail_num = %w(1 2 3 4 5 6 7 8 9 10).sample

    case mail_num
    when '1'
      UserMailer.submitted_confession_email1(params[:email]).deliver
    when '2'
      UserMailer.submitted_confession_email2(params[:email]).deliver
    when '3'
      UserMailer.submitted_confession_email3(params[:email]).deliver
    when '4'
      UserMailer.submitted_confession_email4(params[:email]).deliver
    when '5'
      UserMailer.submitted_confession_email5(params[:email]).deliver
    when '6'
      UserMailer.submitted_confession_email6(params[:email]).deliver
    when '7'
      UserMailer.submitted_confession_email7(params[:email]).deliver
    when '8'
      UserMailer.submitted_confession_email8(params[:email]).deliver
    when '9'
      UserMailer.submitted_confession_email9(params[:email]).deliver
    when '10'
      UserMailer.submitted_confession_email10(params[:email]).deliver
    end
    
    redirect_to confessions_show_path
  end


end
