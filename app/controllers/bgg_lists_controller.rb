 class BggListsController < ApplicationController
# WillPaginate::BGG
  # GET /bgg_lists
  def index
    bgg_object = Bgg.new('')
    # bgg_object = WillPaginate::Collection.create(1, 10, total = nil)
     @game = bgg_object.get_bgg_list()
    render json: @game.to_json(), status: 200
    # paginate json: @game.to_json(), status: 200
  end

  # GET /bgg_lists/1
  def show
    bgg_object = Bgg.new(params[:id])
    @game = bgg_object.get_bgg_game()
    render json: @game.to_json(), status: 200
  end

  private

end
