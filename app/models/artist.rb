class Artist < ActiveRecord::Base
  attr_accessible :alias, :birthday, :category, :description, :first_name, :last_name, :nationality, :arts_attributes

  has_many :arts, :as => :attachable

  accepts_nested_attributes_for :arts
end
