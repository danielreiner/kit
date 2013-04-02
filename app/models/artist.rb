class Artist < ActiveRecord::Base

  scope :sorted, :order => "last_name ASC"

  attr_accessible :alias, :birthday, :category, :description, :first_name, :last_name, :nationality, :arts_attributes

  has_many :arts, :as => :attachable

  accepts_nested_attributes_for :arts

  
  def fullname
    "#{first_name} #{last_name}".strip
  end

  def reverse_fullname
    "#{last_name}, #{first_name}".strip
  end

end
