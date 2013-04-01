class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_footer

  def get_footer
  	@footer = Footer.first
  end 

end
