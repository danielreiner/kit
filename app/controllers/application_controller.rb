class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_logo
  before_filter :get_footer

  def get_footer
  	@footer = Footer.first
  end 
  
  def get_logo
    @logo_art = Art.where('title ILIKE ?', "website-logo").first
  end

end
