class Artist < ActiveRecord::Base

  scope :sorted, :order => "last_name ASC"

  attr_accessible :alias, :birthday, :description, :first_name, :last_name, :arts_attributes, :category_id, :nationality_id, :event_id, :gallery_id, :user_id

  has_many :arts, :as => :attachable
  belongs_to :gallery
  belongs_to :event
  belongs_to :category
  belongs_to :nationality
  belongs_to :user

  validate :user_may_create_artist, :on => :create  

  accepts_nested_attributes_for :arts

  def user_may_create_artist
    errors.add(:base, "Exceeds allowed number of artists.") unless user.may_create_artist?
  end

  
  def fullname
    "#{first_name} #{last_name}".strip
  end

  def reverse_fullname
    "#{last_name}, #{first_name}".strip
  end

  def self.search(search)
    if search
      where('last_name ilike ?', "%#{search}%")  
    else
      scoped
    end
  end

end
