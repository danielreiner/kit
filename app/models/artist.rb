class Artist < ActiveRecord::Base

  scope :sorted, :order => "last_name ASC"

  attr_accessible :alias, :birthday, :category, :description, :first_name, :last_name, :nationality, :arts_attributes, :category_id

  has_many :arts, :as => :attachable
  belongs_to :category

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

  def category_id_enum
    %w[admin guest]
  end

end
