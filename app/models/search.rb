class Search < ActiveRecord::Base
  has_many :search_businesses
  has_many :businesses, through: :search_businesses
  
  # tips, comments on a search area?
  has_many :comments, as: :commentable

  validates :business_name, presence: true
  validates :city, presence: true

  def show_businesses
    @businesses ||= populate_businesses
    self.businesses
  end

  # private

  def populate_businesses
    @client = Foursquare2::Client.new(:client_id => ENV["CLIENT_ID"], :client_secret => ENV["CLIENT_SECRET"])
    fs_businesses = @client.search_venues(:near => city, :query => business_name)
    fs_businesses = fs_businesses.first[1].first["items"]
    if fs_businesses == nil
      return false
    else
      fs_businesses.each do |fs_business|
        ## need to change parent category to an array and remove last .first
       business = Business.find_or_create_by(name: fs_business.name, address: fs_business.location.address, city: fs_business.location.city, state: fs_business.location.state, country: fs_business.location.country, latitude: fs_business.location.lat.to_s, longitude: fs_business.location.lng.to_s, phone: fs_business.contact.formattedPhone, category: fs_business.categories.first.name, parent_category: fs_business.categories.first.parents.first, fs_id: fs_business.id)
       self.businesses << business
     end
    end
  end


end 