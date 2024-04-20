# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # def destroy
  #   super
  #   respond_to do |format|
  #     format.html { redirect_to root_path, notice: "User was successfully signed-out." }
  #     format.json { head :no_content }
  #   end
  # end
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
