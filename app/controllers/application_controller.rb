class ApplicationController < ActionController::Base
  before_action :authenticate_user!
    layout :layout_by_resource
  
    private

    def layout_by_resource
      if devise_controller?
        "user"
      else
        "application"
      end
    end


    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
    

    protected
   def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:fullname, :email, :company, :department,  :password, :password_confirmation)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:fullname, :email, :company, :department, :jobtitle, :manager_id, :password, :current_password)}
   end
end
