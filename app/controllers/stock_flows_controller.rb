class StockFlowsController < ApplicationController
  before_action :set_stock_flow, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_volunteer!

  # GET /stock_flows
  # GET /stock_flows.json
  def index
    @stock_flows = StockFlow.all
  end

  # GET /stock_flows/1
  # GET /stock_flows/1.json
  def show
  end

  # GET /stock_flows/new
  def new
    @stock_flow = StockFlow.new
  end

  # GET /stock_flows/1/edit
  def edit
  end

  # POST /stock_flows
  # POST /stock_flows.json
  def create
    @stock_flow = StockFlow.new(stock_flow_params)

    respond_to do |format|
      if @stock_flow.save
        format.html { redirect_to @stock_flow, notice: 'Stock flow was successfully created.' }
        format.json { render :show, status: :created, location: @stock_flow }
      else
        format.html { render :new }
        format.json { render json: @stock_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_flows/1
  # PATCH/PUT /stock_flows/1.json
  def update
    respond_to do |format|
      if @stock_flow.update(stock_flow_params)
        format.html { redirect_to @stock_flow, notice: 'Stock flow was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_flow }
      else
        format.html { render :edit }
        format.json { render json: @stock_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_flows/1
  # DELETE /stock_flows/1.json
  def destroy
    @stock_flow.destroy
    respond_to do |format|
      format.html { redirect_to stock_flows_url, notice: 'Stock flow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_flow
      @stock_flow = StockFlow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_flow_params
      params.require(:stock_flow).permit(:in_out, :time, :name, :amount, :kind, :origin_destiny)
    end
end
