class Search < ActiveRecord::Base
  attr_accessible :category_id, :keywords, :nationality

  def artists
    @artists ||= find_artists
  end
  
  private
  
  def find_artists
    artists = Artist.order(:last_name)
    artists = artists.where("last_name ilike ?", "%#{keywords}%") if keywords.present?
    artists = artists.where(category_id: category_id) if category_id.present?
    artists = artists.where("nationality ilike ?", nationality) if nationality.present?    
    artists
  end

end
