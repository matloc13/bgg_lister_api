class SearchlistsController < ApplicationController
  # before_action :set_searchlist, only: [ :show, :update, :destroy]

  # GET /searchlists
  def index
    search_object = Search.new(params[:id])
    @searchlists = search_object.get_search()
    render json: @searchlists.to_json(), status: 200
  end

  # GET /searchlists/1
  def show
    search_object = Search.new(params[:id])
    @searchlists = search_object.get_search()
    render json: @searchlists.to_json(), status: 200
  end

  # POST /searchlists
  # def create
  #   @searchlist = Searchlist.new(searchlist_params)
  #
  #   if @searchlist.save
  #     render json: @searchlist, status: :created, location: @searchlist
  #   else
  #     render json: @searchlist.errors, status: :unprocessable_entity
  #   end
  # end


  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_searchlist
    #   @searchlist = Searchlist.find(params[:id])
    # end
    #
    # # Only allow a trusted parameter "white list" through.
    # def searchlist_params
    #   params.fetch(:searchlist, {})
    # end
end
