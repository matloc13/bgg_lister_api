class HotlistsController < ApplicationController


  # GET /hotlists
  def index
  hot_object = Hot.new('')
  @games = hot_object.get_bgg_hot()
  render json: @games.to_json(), status: 200
  end

end
