class Nationality < ActiveRecord::Base
  attr_accessible :name

  has_many :artists
end