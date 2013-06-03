class Event < ActiveRecord::Base
  attr_accessible :artists, :city, :co, :country, :description, :email, :end_date, :name, :start_date, :street, :subline, :url, :zip_code

  scope :upcoming, -> { where(['DATE(start_date) > ?', Time.now.to_date]).order('start_date ASC') }
  scope :current,  -> { where(['DATE(start_date) <= ? AND DATE(end_date) >= ?', Time.now.to_date, Time.now.to_date]).order('start_date ASC') }
  scope :past,     -> { where(['DATE(start_date) < ? AND DATE(end_date) < ?', Time.now.to_date, Time.now.to_date]).order('start_date ASC') }



  def event_address
    @address = []
    @address << co unless co.nil?
    @address << street unless street.nil?
    @zip_and_city = []
    @zip_and_city << zip_code unless zip_code.nil?
    @zip_and_city << city unless city.nil?
    @address << @zip_and_city.join(' ') unless @zip_and_city.empty?
    @address << country unless country.nil?
    @address.join(" | ")
  end

end
