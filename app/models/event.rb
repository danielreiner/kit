class Event < ActiveRecord::Base
  attr_accessible :city, :end_date, :name, :start_date, :opening, :url, :zip_code, :artist_id, :user_id

  belongs_to :user
  belongs_to :artist
  has_many :ads

  scope :upcoming, -> { where(['DATE(start_date) > ?', Time.now.to_date]).order('start_date ASC') }
  scope :current,  -> { where(['DATE(start_date) <= ? AND DATE(end_date) >= ?', Time.now.to_date, Time.now.to_date]).order('start_date ASC') }
  scope :past,     -> { where(['DATE(start_date) < ? AND DATE(end_date) < ?', Time.now.to_date, Time.now.to_date]).order('start_date ASC') }
  scope :active,   -> { where(['DATE(end_date) > ?', Time.now.to_date]).order('start_date ASC') }

end
