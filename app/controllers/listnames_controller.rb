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
    @listname = Listname.new(listname_params)
    @listname.user_id = params[:user_id]

    if @listname.save
      render json: @listname, status: :created
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
      params.require(:listname).permit(:title)
    end
end
