class FlavourProfilesController < ApplicationController
  before_action :set_flavour_profile, only: [:show, :edit, :update, :destroy]

  # GET /flavour_profiles
  # GET /flavour_profiles.json
  def index
    @flavour_profiles = FlavourProfile.all
  end

  # GET /flavour_profiles/1
  # GET /flavour_profiles/1.json
  def show
  end

  # GET /flavour_profiles/new
  def new
    @flavour_profile = FlavourProfile.new
  end

  # GET /flavour_profiles/1/edit
  def edit
  end

  # POST /flavour_profiles
  # POST /flavour_profiles.json
  def create
    @flavour_profile = FlavourProfile.new(flavour_profile_params)

    respond_to do |format|
      if @flavour_profile.save
        format.html { redirect_to @flavour_profile, notice: 'Flavour profile was successfully created.' }
        format.json { render :show, status: :created, location: @flavour_profile }
      else
        format.html { render :new }
        format.json { render json: @flavour_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flavour_profiles/1
  # PATCH/PUT /flavour_profiles/1.json
  def update
    respond_to do |format|
      if @flavour_profile.update(flavour_profile_params)
        format.html { redirect_to @flavour_profile, notice: 'Flavour profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @flavour_profile }
      else
        format.html { render :edit }
        format.json { render json: @flavour_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flavour_profiles/1
  # DELETE /flavour_profiles/1.json
  def destroy
    @flavour_profile.destroy
    respond_to do |format|
      format.html { redirect_to flavour_profiles_url, notice: 'Flavour profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flavour_profile
      @flavour_profile = FlavourProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flavour_profile_params
      params.require(:flavour_profile).permit(:body, :fruit_notes, :spice_notes, :chocolate_notes, :grain_notes, :roast_notes, :floral_notes, :nut_notes, :sugar_notes, :savory_notes)
    end
end
