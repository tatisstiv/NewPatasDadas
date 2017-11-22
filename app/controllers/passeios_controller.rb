class PasseiosController < ApplicationController
  before_action :set_passeio, only: [:show, :edit, :update, :destroy]

  # GET /passeios
  # GET /passeios.json
  def index
    @passeios = Passeio.all
  end

  # GET /passeios/1
  # GET /passeios/1.json
  def show
  end

  # GET /passeios/new
  def new
    @passeio = Passeio.new
  end

  # GET /passeios/1/edit
  def edit
  end

  # POST /passeios
  # POST /passeios.json
  def create
    @passeio = Passeio.new(passeio_params)

    respond_to do |format|
      if @passeio.save
        format.html { redirect_to @passeio, notice: 'Passeio was successfully created.' }
        format.json { render :show, status: :created, location: @passeio }
      else
        format.html { render :new }
        format.json { render json: @passeio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /passeios/1
  # PATCH/PUT /passeios/1.json
  def update
    respond_to do |format|
      if @passeio.update(passeio_params)
        format.html { redirect_to @passeio, notice: 'Passeio was successfully updated.' }
        format.json { render :show, status: :ok, location: @passeio }
      else
        format.html { render :edit }
        format.json { render json: @passeio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passeios/1
  # DELETE /passeios/1.json
  def destroy
    @passeio.destroy
    respond_to do |format|
      format.html { redirect_to passeios_url, notice: 'Passeio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_passeio
      @passeio = Passeio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def passeio_params
      params.require(:passeio).permit(:Voluntarios_id, :Animals_id, :data, :timestamps)
    end
end
