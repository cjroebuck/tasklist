class PrioritiesController < ApplicationController
  def index
    @priorities = Priority.all
  end
  
  def show
    @priority = Priority.find(params[:id])
  end
  
  def new
    @priority = Priority.new
  end
  
  def create
    @priority = Priority.new(params[:priority])
    if @priority.save
      flash[:notice] = "Successfully created priority."
      redirect_to @priority
    else
      render :action => 'new'
    end
  end
  
  def edit
    @priority = Priority.find(params[:id])
  end
  
  def update
    @priority = Priority.find(params[:id])
    if @priority.update_attributes(params[:priority])
      flash[:notice] = "Successfully updated priority."
      redirect_to @priority
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @priority = Priority.find(params[:id])
    @priority.destroy
    flash[:notice] = "Successfully destroyed priority."
    redirect_to priorities_url
  end
end
