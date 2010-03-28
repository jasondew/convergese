class SessionsController < ApplicationController

  def index
    @sessions = Session.all
  end

  def new
    @session = Session.new
  end

  def create
    if (@session = Session.new params[:session]).save
      redirect_to sessions_path, :notice => "Session successfully created."
    else
      flash[:error] = @session.errors.full_messages.to_sentence
      render :action => "new"
    end
  end

  def edit
    @session = Session.find params[:id]
  end

  def update
    if (@session = Session.find(params[:id])).update_attributes params[:session]
      redirect_to sessions_path, :notice => "Session successfully updated."
    else
      flash[:error] = @session.errors.full_messages.to_sentence
      render :action => "edit"
    end
  end

  def destroy
    Session.find(params[:id]).destroy
    redirect_to sessions_path, :notice => "Session successfully removed."
  end

end
