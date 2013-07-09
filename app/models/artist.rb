class Artist < ActiveRecord::Base

  scope :sorted, :order => "last_name ASC"

  attr_accessible :alias, :birthday, :description, :first_name, :last_name, :arts_attributes, :category_id, :nationality_id

  has_many :arts, :as => :attachable
  has_and_belongs_to_many :galleries
  belongs_to :category
  belongs_to :nationality

  accepts_nested_attributes_for :arts

  
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
