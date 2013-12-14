class SearchesController < ApplicationController
  
  def new
    @search = Search.new
  end

  def create
    # need to add logic if search already exists .populate
     @search = Search.where(business_name: params[:search]["business_name"].downcase, city: params[:search]["city"].downcase).first
    if !@search.present?
      @search = Search.new(business_name: params[:search]["business_name"].downcase, city: params[:search]["city"].downcase)
      @search.save
      @search.populate_businesses
    end
    render :show
  end

  def show
    @search = Search.find(params[:id])
  end

end
