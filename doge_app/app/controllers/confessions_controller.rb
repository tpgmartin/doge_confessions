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
    UserMailer.submitted_confession_email(params[:email]).deliver
    redirect_to confessions_show_path
  end


end
