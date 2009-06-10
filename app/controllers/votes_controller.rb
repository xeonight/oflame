class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end
  
  def show
    @vote = Vote.find(params[:id])
  end
  
  def new
    @vote = Vote.new
  end
  
  def create
    @vote = Vote.new(params[:vote])
    if @vote.save
      flash[:notice] = "Successfully voted."
      redirect_to @vote
    else
      render :action => 'new'
    end
  end
  
  def edit
    @vote = Vote.find(params[:id])
  end
  
  def update
    @vote = Vote.find(params[:id])
    if @vote.update_attributes(params[:vote])
      flash[:notice] = "Successfully updated vote."
      redirect_to @vote
    else
      render :action => 'edit'
    end
  end
end
