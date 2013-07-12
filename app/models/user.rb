class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :artist_tickets
  # attr_accessible :title, :body

  has_one :gallery
  has_many :artists
  has_many :events

  def role_enum
    %w[admin guest]
  end

  def role?(role)
    self.role == role.to_s
  end

  def may_create_artist?
    !artist_tickets.nil? && artists.count < artist_tickets
  end

end
