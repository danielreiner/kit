class Gallery < ActiveRecord::Base
  attr_accessible :city, :country, :email, :name, :street, :url, :zip_code

  has_and_belongs_to_many :artists
  
end
