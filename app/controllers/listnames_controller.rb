class ListnamesController < ApplicationController
  before_action :set_listname, only: [:show, :update, :destroy]

  # GET /listnames
  def index
    @listnames = Listname.all

    render json: @listnames
  end

  # GET /listnames/1
  def show
    render json: @listname
  end

  # POST /listnames
  def create
    puts :listname
    @listname = Listname.new(listname_params)
    @listname.user_id = params[:user_id]
    @game = params[:listname][:game]

    @game_params = {
      name: @game[:name],
      img: @game[:img],
      bggid: @game[:bggid],
      listname_id: @listname[:id]

    }

    puts @game_params

    if @listname.save
      render json: @listname, status: :created

      @game_params[:listname_id] = @listname[:id]
      Game.create!(@game_params)
    else
      render json: @listname.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /listnames/1
  def update
    if @listname.update(listname_params)
      render json: @listname
    else
      render json: @listname.errors, status: :unprocessable_entity
    end
  end

  # DELETE /listnames/1
  def destroy
    @listname.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listname
      @listname = Listname.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def listname_params
      params.require(:listname).permit( :id, :user_id, :title, :game, :listname)
    end
end
