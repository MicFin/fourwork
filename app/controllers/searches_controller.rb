class SearchesController < ApplicationController
  
  def new
    @search = Search.new
  end

  def create
     @search = Search.where(business_name: params[:search]["business_name"].downcase, city: params[:search]["city"].downcase).first
    if !@search.present?
      @search = Search.new(business_name: params[:search]["business_name"].downcase, city: params[:search]["city"].downcase)
      @search.save
      @search.show_businesses
    end
    render :show
  end

  def update
    ## uniquely using update to do new searches, not atually update  a search
    ## same as create method
    @search = Search.where(business_name: params[:search]["business_name"].downcase, city: params[:search]["city"].downcase).first
    if !@search.present?
      @search = Search.new(business_name: params[:search]["business_name"].downcase, city: params[:search]["city"].downcase)
      @search.save
      @search.show_businesses
    end
    render :show
  end

  def show
    @search = Search.find(params[:id])
  end

end
