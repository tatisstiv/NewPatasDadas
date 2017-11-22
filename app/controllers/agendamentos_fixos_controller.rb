class AgendamentosFixosController < ApplicationController
  before_action :set_agendamentos_fixo, only: [:show, :edit, :update, :destroy]

  # GET /agendamentos_fixos
  # GET /agendamentos_fixos.json
  def index
    @agendamentos_fixos = AgendamentosFixo.all
  end

  # GET /agendamentos_fixos/1
  # GET /agendamentos_fixos/1.json
  def show
  end

  # GET /agendamentos_fixos/new
  def new
    @agendamentos_fixo = AgendamentosFixo.new
  end

  # GET /agendamentos_fixos/1/edit
  def edit
  end

  # POST /agendamentos_fixos
  # POST /agendamentos_fixos.json
  def create
    @agendamentos_fixo = AgendamentosFixo.new(agendamentos_fixo_params)

    respond_to do |format|
      if @agendamentos_fixo.save
        format.html { redirect_to @agendamentos_fixo, notice: 'Agendamentos fixo was successfully created.' }
        format.json { render :show, status: :created, location: @agendamentos_fixo }
      else
        format.html { render :new }
        format.json { render json: @agendamentos_fixo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agendamentos_fixos/1
  # PATCH/PUT /agendamentos_fixos/1.json
  def update
    respond_to do |format|
      if @agendamentos_fixo.update(agendamentos_fixo_params)
        format.html { redirect_to @agendamentos_fixo, notice: 'Agendamentos fixo was successfully updated.' }
        format.json { render :show, status: :ok, location: @agendamentos_fixo }
      else
        format.html { render :edit }
        format.json { render json: @agendamentos_fixo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agendamentos_fixos/1
  # DELETE /agendamentos_fixos/1.json
  def destroy
    @agendamentos_fixo.destroy
    respond_to do |format|
      format.html { redirect_to agendamentos_fixos_url, notice: 'Agendamentos fixo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agendamentos_fixo
      @agendamentos_fixo = AgendamentosFixo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agendamentos_fixo_params
      params.require(:agendamentos_fixo).permit(:Voluntarios_id, :Animals_id, :dia_da_semana, :timestamps)
    end
end
