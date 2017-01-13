class GoodVibesController < ApplicationController
  before_action :set_good_vibe, only: [:show, :edit, :update, :destroy]

  # GET /good_vibes
  # GET /good_vibes.json
  def index
    @good_vibes = GoodVibe.all
  end

  # GET /good_vibes/1
  # GET /good_vibes/1.json
  def show
  end

  # GET /good_vibes/new
  def new
    @good_vibe = GoodVibe.new
  end

  # GET /good_vibes/1/edit
  def edit
  end

  # POST /good_vibes
  # POST /good_vibes.json
  def create
    @good_vibe = GoodVibe.new(good_vibe_params)

    respond_to do |format|
      if @good_vibe.save
        format.html { redirect_to @good_vibe, notice: 'Good vibe was successfully created.' }
        format.json { render :show, status: :created, location: @good_vibe }
      else
        format.html { render :new }
        format.json { render json: @good_vibe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /good_vibes/1
  # PATCH/PUT /good_vibes/1.json
  def update
    respond_to do |format|
      if @good_vibe.update(good_vibe_params)
        format.html { redirect_to @good_vibe, notice: 'Good vibe was successfully updated.' }
        format.json { render :show, status: :ok, location: @good_vibe }
      else
        format.html { render :edit }
        format.json { render json: @good_vibe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /good_vibes/1
  # DELETE /good_vibes/1.json
  def destroy
    @good_vibe.destroy
    respond_to do |format|
      format.html { redirect_to good_vibes_url, notice: 'Good vibe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_good_vibe
      @good_vibe = GoodVibe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def good_vibe_params
      params.require(:good_vibe).permit(:ReplayName, :ReplayDate)
    end
end
