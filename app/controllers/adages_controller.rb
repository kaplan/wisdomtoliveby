class AdagesController < ApplicationController

  def index
    @adages = Adage.all
  end

  def show
    @adage = Adage.find(params[:id])
  end

  def new
    @adage = Adage.new
  end

  def create
    @adage = Adage.new(params[:adage])
    if @adage.save
      redirect_to adages_url, :notice => "new adage created."
    else
      render 'new'
    end
  end

  def edit
    @adage = Adage.find(params[:id])
  end

  def update
    @adage = Adage.find(params[:id])
    if @adage.update_paramaters(params[:adage])
      redirect_to adages_url, :notice => "adage updated."
    else
      render 'edit'
    end
  end

  def admin
    @adages = Adage.all
  end


end
