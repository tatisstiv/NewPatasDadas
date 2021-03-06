class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_volunteer!

  private

  def sign_up_params
    params.require(:volunteer).permit(:name, :function, :motivation_text, :email, :password, 
                                      :password_confirmation)
  end

  def account_update_params
    params.require(:volunteer).permit(:name, :function, :motivation_text, :email, :password,
                                      :password_confirmation, :current_password)
  end
end