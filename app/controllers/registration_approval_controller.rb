class RegistrationApprovalController < ApplicationController
  before_action :set_volunteer, only: [:show, :approve, :reject]
  
  def waiting_approval
    @volunteers = Volunteer.where(approved: false)
  end
  
  def show
  end
  
  def approve
    @volunteer.approved = true
    
    respond_to do |format|
      if @volunteer.save
        format.html { redirect_to waiting_approval_url, notice: 'Voluntário aprovado.' }
        format.json { render :waiting_approval, status: :ok, location: @volunteer }
      else
        format.html { render :waiting_approval }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def reject
    @volunteer.destroy
    respond_to do |format|
      format.html { redirect_to waiting_approval_url, notice: 'Voluntário rejeitado.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_volunteer
      @volunteer = Volunteer.find(params[:id])
    end
end
