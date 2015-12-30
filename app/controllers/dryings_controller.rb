class DryingsController < ApplicationController
  before_action :set_drying, only: [:show, :edit, :update, :destroy]

  # GET /dryings
  # GET /dryings.json
  def index
    @dryings = Drying.all
  end

  # GET /dryings/1
  # GET /dryings/1.json
  def show
  end

  # GET /dryings/new
  def new
    @drying = Drying.new
  end

  # GET /dryings/1/edit
  def edit
  end

  # POST /dryings
  # POST /dryings.json
  def create
    @drying = Drying.new(drying_params)

    respond_to do |format|
      if @drying.save
        format.html { redirect_to @drying, notice: 'Drying was successfully created.' }
        format.json { render :show, status: :created, location: @drying }
      else
        format.html { render :new }
        format.json { render json: @drying.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dryings/1
  # PATCH/PUT /dryings/1.json
  def update
    respond_to do |format|
      if @drying.update(drying_params)
        format.html { redirect_to @drying, notice: 'Drying was successfully updated.' }
        format.json { render :show, status: :ok, location: @drying }
      else
        format.html { render :edit }
        format.json { render json: @drying.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dryings/1
  # DELETE /dryings/1.json
  def destroy
    @drying.destroy
    respond_to do |format|
      format.html { redirect_to dryings_url, notice: 'Drying was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drying
      @drying = Drying.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drying_params
      params.require(:drying).permit(:method, :flavour_profile_id)
    end
end
