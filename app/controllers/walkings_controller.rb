class WalkingsController < ApplicationController
  before_action :set_walking, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_volunteer!

  # GET /walkings
  # GET /walkings.json
  def index
    @walkings = Walking.all
  end

  # GET /walkings/1
  # GET /walkings/1.json
  def show
  end

  # GET /walkings/new
  def new
    @walking = Walking.new
    @walking.volunteer_id = 1
    @walking.animal_id = params[:animal_id]
  end

  # GET /walkings/1/edit
  def edit
  end

  # POST /walkings
  # POST /walkings.json
  def create
    @walking = Walking.new(walking_params)

    respond_to do |format|
      if @walking.save
        format.html { redirect_to @walking, notice: 'Passeio registrado com sucesso.' }
        format.json { render :show, status: :created, location: @walking }
      else
        format.html { render :new }
        format.json { render json: @walking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /walkings/1
  # PATCH/PUT /walkings/1.json
  def update
    respond_to do |format|
      if @walking.update(walking_params)
        format.html { redirect_to @walking, notice: 'Passeio atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @walking }
      else
        format.html { render :edit }
        format.json { render json: @walking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /walkings/1
  # DELETE /walkings/1.json
  def destroy
    @walking.destroy
    respond_to do |format|
      format.html { redirect_to walkings_url, notice: 'Passeio excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_walking
      @walking = Walking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def walking_params
      params.require(:walking).permit(:date, :volunteer_id, :animal_id)
    end
end
