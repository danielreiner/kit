class Gallery < ActiveRecord::Base
  attr_accessible :city, :country, :email, :name, :street, :url, :zip_code
end
