class SearchlistsController < ApplicationController

 # GET /searchlists
 def index
   search_object = Search.new(params[:query])
   @game = search_object.get_search()
   render json: @game.to_json(), status: 200
 end

 private

end
