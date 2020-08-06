class WeedsController < ApplicationController
  before_action :set_weed, only: [:show, :edit, :update, :destroy]

  # GET /weeds
  # GET /weeds.json
  def index
    @weeds = Weed.all
  end

  # GET /weeds/1
  # GET /weeds/1.json
  def show
  end

  # GET /weeds/new
  def new
    @weed = Weed.new
  end

  # GET /weeds/1/edit
  def edit
  end

  # POST /weeds
  # POST /weeds.json
  def create
    @weed = Weed.new(weed_params)

    respond_to do |format|
      if @weed.save
        format.html { redirect_to @weed, notice: 'Weed was successfully created.' }
        format.json { render :show, status: :created, location: @weed }
      else
        format.html { render :new }
        format.json { render json: @weed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weeds/1
  # PATCH/PUT /weeds/1.json
  def update
    respond_to do |format|
      if @weed.update(weed_params)
        format.html { redirect_to @weed, notice: 'Weed was successfully updated.' }
        format.json { render :show, status: :ok, location: @weed }
      else
        format.html { render :edit }
        format.json { render json: @weed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weeds/1
  # DELETE /weeds/1.json
  def destroy
    @weed.destroy
    respond_to do |format|
      format.html { redirect_to weeds_url, notice: 'Weed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weed
      @weed = Weed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def weed_params
      params.require(:weed).permit(:strain, :thc_percentage, :lineage, :activites, :feelings, :cbd_percentage)
    end
end
