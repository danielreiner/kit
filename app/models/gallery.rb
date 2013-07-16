class Gallery < ActiveRecord::Base
  attr_accessible :city, :country, :email, :name, :street, :url, :zip_code, :user_id

  belongs_to :user
  has_and_belongs_to_many :artists

  def title
    self.name
  end

  def address
    @address = []
    @address << street unless street.nil?
    @zip_and_city = []
    @zip_and_city << zip_code unless zip_code.nil?
    @zip_and_city << city unless city.nil?
    @address << @zip_and_city.join(' ') unless @zip_and_city.empty?
    @address << country unless country.nil?
    @address.join(" | ")
  end

end
