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
    redirect_to confessions_path
  end


end
