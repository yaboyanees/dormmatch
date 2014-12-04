class DormsController < ApplicationController
  before_action :set_dorm, only: [:show, :edit, :update, :destroy]

  # GET /dorms
  # GET /dorms.json
  def index
    @dorms = Dorm.all
    @dorm = Dorm.new
  end

  # GET /dorms/1
  # GET /dorms/1.json
  def show
  end

  # GET /dorms/new
  def new
    @dorm = Dorm.new
  end

  # GET /dorms/1/edit
  def edit
  end

  # POST /dorms
  # POST /dorms.json
  def create
    @dorm = Dorm.new(dorm_params)

    respond_to do |format|
      if @dorm.save
        format.html { redirect_to :action => "index"}
      else
        format.html { render action: 'index' }
      end
    end
  end

  # PATCH/PUT /dorms/1
  # PATCH/PUT /dorms/1.json
  def update
    respond_to do |format|
      if @dorm.update(dorm_params)
        format.html { redirect_to @dorm, notice: 'Dorm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dorm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dorms/1
  # DELETE /dorms/1.json
  def destroy
    @dorm.destroy
    respond_to do |format|
      format.html { redirect_to dorms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dorm
      @dorm = Dorm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dorm_params
      params.require(:dorm).permit(:name, :price, :location, :num_roomates, :dorm_image, :room_image, :school_id)
    end
end
