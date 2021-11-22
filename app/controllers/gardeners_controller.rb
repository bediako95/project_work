class GardenersController < ApplicationController
  before_action :set_gardener, only: %i[show edit update destroy]
  # before_action :authenticate_users_authentication!, except: [:index]

  # GET /gardeners or /gardeners.json
  def index
    @gardeners = Gardener.all
  end

  # GET /gardeners/1 or /gardeners/1.json
  def show; end

  # GET /gardeners/new
  def new
    @gardener = Gardener.new
  end

  # GET /gardeners/1/edit
  def edit; end

  # POST /gardeners or /gardeners.json

  
  def create
    @gardener = Gardener.new(gardener_params)

    respond_to do |format|
      if @gardener.save
        format.html { redirect_to @gardener, notice: 'Gardener was successfully created.' }
        format.json { render :show, status: :created, location: @gardener }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gardener.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gardeners/1 or /gardeners/1.json
  def update
    respond_to do |format|
      if @gardener.update(gardener_params)
        format.html { redirect_to @gardener, notice: 'Gardener was successfully updated.' }
        format.json { render :show, status: :ok, location: @gardener }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gardener.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gardeners/1 or /gardeners/1.json
  def destroy
    @gardener.destroy
    respond_to do |format|
      format.html { redirect_to gardeners_url, notice: 'Gardener was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gardener
    @gardener = Gardener.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def gardener_params
    params.require(:gardener).permit(:first_name, :last_name, :phone, :residential_address)
  end
end
