class CountriesController < ApplicationController

  #Index
  def index
    @countries = Country.all
  end


  #Show
  def show
    @country = Country.find(params[:id])
  end


  #Edit
  def edit
    @country = Country.find(params[:id])
  end


  #Create
  def create
    new_country = Country.new
    new_country.name = params[:name]
    new_country.population = params[:population]
    new_country.flag_url = params[:flag_url]
    new_country.language = params[:language]
    new_country.leader = params[:leader]
    new_country.save

    redirect_to "/countries"
  end


  #New
  def new
  end


  #Update
  def update
  end


  #Delete
  def destroy
  end
  
end
