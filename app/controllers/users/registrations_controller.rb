class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_account_update_params, only: [:update]

  protected

  def update_resource(resource, params)
    resource.update_without_current_password(params)
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :name_kana, :occupation_id, :gender_id, :family_member])
  end
end