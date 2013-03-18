class Event < ActiveRecord::Base
  attr_accessible :artists, :city, :co, :country, :description, :email, :end_date, :name, :start_date, :street, :subline, :url, :zip_code
end
