class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource)
      case resource
      when EndUser
        root_path
      when Admin
        admins_homes_path
      when Creater
      	creaters_homes_path
      end
    end

    def after_sign_out_path_for(resource)
      root_path
    end



	protected

		def configure_permitted_parameters
			devise_parameter_sanitizer.permit(:sign_up, keys: [:name_first, :name_family, :name_first_kana, :name_family_kana, :postal_code, :address, :tel, :name, :profile])
			devise_parameter_sanitizer.permit(:account_update, keys: [:name_first, :name_family, :name_first_kana, :name_family_kana, :postal_code, :address, :tel, :name, :profile, :status])
		end

end
