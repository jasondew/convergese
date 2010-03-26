class SessionsController < ApplicationController

  def index
    @sessions = Session.all
  end

  def new
    @session = Session.new
  end

  def create
    if (@session = Session.new params[:session]).save
      flash[:notice] = "Session successfully created."
      redirect_to sessions_path
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
      flash[:notice] = "Session successfully updated."
      redirect_to sessions_path
    else
      flash[:error] = @session.errors.full_messages.to_sentence
      render :action => "edit"
    end
  end

  def destroy
    Session.find(params[:id]).destroy
    flash[:notice] = "Session successfully removed."
    redirect_to sessions_path
  end

end
