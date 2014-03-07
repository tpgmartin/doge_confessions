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
    @confession = Confession.new(confession_text: params['confession_text'], email: params['email'])
    @confession.save

    redirect_to confessions_show_path
  end


end
