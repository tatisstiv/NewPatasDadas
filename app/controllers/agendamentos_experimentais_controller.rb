class AgendamentosExperimentaisController < ApplicationController
  before_action :set_agendamentos_experimentai, only: [:show, :edit, :update, :destroy]

  # GET /agendamentos_experimentais
  # GET /agendamentos_experimentais.json
  def index
    @agendamentos_experimentais = AgendamentosExperimentai.all
  end

  # GET /agendamentos_experimentais/1
  # GET /agendamentos_experimentais/1.json
  def show
  end

  # GET /agendamentos_experimentais/new
  def new
    @agendamentos_experimentai = AgendamentosExperimentai.new
  end

  # GET /agendamentos_experimentais/1/edit
  def edit
  end

  # POST /agendamentos_experimentais
  # POST /agendamentos_experimentais.json
  def create
    @agendamentos_experimentai = AgendamentosExperimentai.new(agendamentos_experimentai_params)

    respond_to do |format|
      if @agendamentos_experimentai.save
        format.html { redirect_to @agendamentos_experimentai, notice: 'Agendamentos experimentai was successfully created.' }
        format.json { render :show, status: :created, location: @agendamentos_experimentai }
      else
        format.html { render :new }
        format.json { render json: @agendamentos_experimentai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agendamentos_experimentais/1
  # PATCH/PUT /agendamentos_experimentais/1.json
  def update
    respond_to do |format|
      if @agendamentos_experimentai.update(agendamentos_experimentai_params)
        format.html { redirect_to @agendamentos_experimentai, notice: 'Agendamentos experimentai was successfully updated.' }
        format.json { render :show, status: :ok, location: @agendamentos_experimentai }
      else
        format.html { render :edit }
        format.json { render json: @agendamentos_experimentai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agendamentos_experimentais/1
  # DELETE /agendamentos_experimentais/1.json
  def destroy
    @agendamentos_experimentai.destroy
    respond_to do |format|
      format.html { redirect_to agendamentos_experimentais_url, notice: 'Agendamentos experimentai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agendamentos_experimentai
      @agendamentos_experimentai = AgendamentosExperimentai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agendamentos_experimentai_params
      params.require(:agendamentos_experimentai).permit(:Voluntarios_id, :Animals_id, :data, :timestamps)
    end
end
