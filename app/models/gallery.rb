class Gallery < ActiveRecord::Base
  attr_accessible :city, :country, :email, :name, :street, :url, :zip_code, :user_id

  belongs_to :user
  has_and_belongs_to_many :artists

  def title
    self.name
  end

end
