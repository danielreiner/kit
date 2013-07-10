class WelcomeController < ApplicationController

  before_filter :get_logo

  def home
    @artist = Artist.last
    @artists = Artist.sorted
    @shouts = Shout.all
    @search = Search.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end

end
