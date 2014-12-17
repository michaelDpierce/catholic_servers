module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:first_name, :last_name, :primary_phone, :primary_phone_type, :secondary_phone, :secondary_phone_type, :secondary_email, :address_1, :address_2, :city, :state, :zip, :parish_id]
    devise_parameter_sanitizer.for(:account_update) << [:first_name, :last_name, :primary_phone, :primary_phone_type, :secondary_phone, :secondary_phone_type, :secondary_email, :address_1, :address_2, :city, :state, :zip, :parish_id]
  end

end

DeviseController.send :include, DevisePermittedParameters
