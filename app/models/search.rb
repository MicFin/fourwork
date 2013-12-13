class Search < ActiveRecord::Base
has_many :search_businesses
has_many :businesses, :through :search_businesses

  def results
    @results ||= find_results
  end

  private

  def populate_businesses
    @client = Foursquare2::Client.new(:client_id => ENV["CLIENT_ID"], :client_secret => ENV["CLIENT_SECRET"])
   fs_businesses = @client.search_venues(:near => city, :query => business_name)
   fs_businesses = results.first[1].first["items"]
   fs_businesses.each do |fs_business|
    business = Business.find_or_create(fs_id: fs_businesses.id)
    self.businesses << business  
   end
  end


end 