class NomineesController < ApplicationController
  def index
    unless current_subdomain.nil?
      @nominees = Nominee.find_tagged_with(current_subdomain.split('.'))
    else
      @nominees = Nominee.all
    end
    def rank
      @nominee = Nominee.votes.find_all_by(:rank)
    end
  end

  def new
    @nominee = Nominee.new
  end

  def create
    @nominee = Nominee.new(params[:nominee])
    if @nominee.save
      flash[:notice] = "Successfully created Nominee."
      redirect_to @nominee
    else
      render :action => 'new'
    end
  end

  def edit
    @nominee = Nominee.find(params[:id])
  end

  def update
    @nominee = Nominee.find(params[:id])
    if @nominee.update_attributes(params[:nominee])
      flash[:notice] = "Successfully Updated Nominee."
      redirect_to @nominee
    else
      render :action => 'edit'
    end
  end

  def show
    @nominee = Nominee.find(params[:id])
    @rank = @nominee.votes.rake
  end
end
