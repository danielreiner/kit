class Search < ActiveRecord::Base
  attr_accessible :category_id, :keywords, :nationality_id

  def artists
    @artists ||= find_artists
  end
  
  private
  
  def find_artists
    artists = Artist.order(:last_name)
    artists = artists.where("last_name ilike ?", "%#{keywords}%") if keywords.present?
    artists = artists.where("first_name ilike ?", "%#{keywords}%") if keywords.present?
    artists = artists.where(category_id: category_id) if category_id.present?
    artists = artists.where(nationality_id: nationality_id) if nationality_id.present?
    artists
  end

end
