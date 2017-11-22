class FixedSchedulingsController < ApplicationController
  before_action :set_fixed_scheduling, only: [:show, :edit, :update, :destroy]

  # GET /fixed_schedulings
  # GET /fixed_schedulings.json
  def index
    @fixed_schedulings = FixedScheduling.all
  end

  # GET /fixed_schedulings/1
  # GET /fixed_schedulings/1.json
  def show
  end

  # GET /fixed_schedulings/new
  def new
    @fixed_scheduling = FixedScheduling.new
    @fixed_scheduling.volunteer_id = 1
    @fixed_scheduling.animal_id = params[:animal_id]
  end

  # GET /fixed_schedulings/1/edit
  def edit
  end

  # POST /fixed_schedulings
  # POST /fixed_schedulings.json
  def create
    @fixed_scheduling = FixedScheduling.new(fixed_scheduling_params)

    respond_to do |format|
      if @fixed_scheduling.save
        format.html { redirect_to @fixed_scheduling, notice: 'Fixed scheduling was successfully created.' }
        format.json { render :show, status: :created, location: @fixed_scheduling }
      else
        format.html { render :new }
        format.json { render json: @fixed_scheduling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fixed_schedulings/1
  # PATCH/PUT /fixed_schedulings/1.json
  def update
    respond_to do |format|
      if @fixed_scheduling.update(fixed_scheduling_params)
        format.html { redirect_to @fixed_scheduling, notice: 'Fixed scheduling was successfully updated.' }
        format.json { render :show, status: :ok, location: @fixed_scheduling }
      else
        format.html { render :edit }
        format.json { render json: @fixed_scheduling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fixed_schedulings/1
  # DELETE /fixed_schedulings/1.json
  def destroy
    @fixed_scheduling.destroy
    respond_to do |format|
      format.html { redirect_to fixed_schedulings_url, notice: 'Fixed scheduling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fixed_scheduling
      @fixed_scheduling = FixedScheduling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fixed_scheduling_params
      params.require(:fixed_scheduling).permit(:day_of_week, :volunteer_id, :animal_id)
    end
end
