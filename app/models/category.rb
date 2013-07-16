class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :artists

  def title
    self.name
  end 
end
