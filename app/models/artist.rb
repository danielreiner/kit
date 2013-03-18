class Artist < ActiveRecord::Base
  attr_accessible :alias, :birthday, :category, :description, :first_name, :last_name, :nationality
end
