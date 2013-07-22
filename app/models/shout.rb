class Shout < ActiveRecord::Base
  attr_accessible :message

  scope :sorted, :order => "id DESC"

end
