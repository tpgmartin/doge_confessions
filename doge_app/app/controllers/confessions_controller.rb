class ConfessionsController < ApplicationController
  # GET /confessions
  # GET /confessions.json
  def index


  end

  # GET /confessions/1
  # GET /confessions/1.json
  def submitted_confession


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @confession }
    end
  end


end
