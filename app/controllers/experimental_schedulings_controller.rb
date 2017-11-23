class ExperimentalSchedulingsController < ApplicationController
  before_action :set_experimental_scheduling, only: [:show, :edit, :update, :destroy]

  # GET /experimental_schedulings
  # GET /experimental_schedulings.json
  def index
    @experimental_schedulings = ExperimentalScheduling.all
  end

  # GET /experimental_schedulings/1
  # GET /experimental_schedulings/1.json
  def show
  end

  # GET /experimental_schedulings/new
  def new
    @experimental_scheduling = ExperimentalScheduling.new
    @experimental_scheduling.volunteer_id = 1
    @experimental_scheduling.animal_id = params[:animal_id]
  end

  # GET /experimental_schedulings/1/edit
  def edit
  end

  # POST /experimental_schedulings
  # POST /experimental_schedulings.json
  def create
    @experimental_scheduling = ExperimentalScheduling.new(experimental_scheduling_params)

    respond_to do |format|
      if @experimental_scheduling.save
        format.html { redirect_to @experimental_scheduling, notice: 'Agendamento registrado com sucesso.' }
        format.json { render :show, status: :created, location: @experimental_scheduling }
      else
        format.html { render :new }
        format.json { render json: @experimental_scheduling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experimental_schedulings/1
  # PATCH/PUT /experimental_schedulings/1.json
  def update
    respond_to do |format|
      if @experimental_scheduling.update(experimental_scheduling_params)
        format.html { redirect_to @experimental_scheduling, notice: 'Agendamento atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @experimental_scheduling }
      else
        format.html { render :edit }
        format.json { render json: @experimental_scheduling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experimental_schedulings/1
  # DELETE /experimental_schedulings/1.json
  def destroy
    @experimental_scheduling.destroy
    respond_to do |format|
      format.html { redirect_to experimental_schedulings_url, notice: 'Agendamento excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experimental_scheduling
      @experimental_scheduling = ExperimentalScheduling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experimental_scheduling_params
      params.require(:experimental_scheduling).permit(:date_time, :volunteer_id, :animal_id)
    end
end
