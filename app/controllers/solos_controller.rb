class SolosController < ApplicationController
  before_action :set_solo, only: [:show, :update, :destroy]

  # GET /solos
  def index
    @solos = Solo.all

    render json: @solos
  end

  # GET /solos/1
  def show
    render json: @solo
  end

  # POST /solos
  def create
    @solo = Solo.new(solo_params)

    if @solo.save
      render json: @solo, status: :created, location: @solo
    else
      render json: @solo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /solos/1
  def update
    if @solo.update(solo_params)
      render json: @solo
    else
      render json: @solo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /solos/1
  def destroy
    @solo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solo
      @solo = Solo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solo_params
      params.fetch(:solo, {})
    end
end
