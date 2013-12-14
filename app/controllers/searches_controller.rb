class SearchesController < ApplicationController
  
  def new
    @search = Search.new
  end

  def create
    # need to add logic if search already exists .populate
     @search = Search.where(business_name: params[:search]["business_name"], city: params[:search]["city"])
    if !@search.present?
      @search = Search.new(business_name: params[:search]["business_name"], city: params[:search]["city"])
      @search.save
      @search.populate_businesses
       render :show
    end
  end

  def show
    @search = Search.find(params[:id])
  end
end
