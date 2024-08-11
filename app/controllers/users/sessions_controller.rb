# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # Displays the form for users to sign in.
  def new
    super
  end

  # Signs the user in and creates a session.
  def create
    super
  end

  # Signs the user out and ends the session.
  def destroy
    super
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    # Customize this method to permit additional parameters during sign-in, for example:
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
    # Uncomment the line below and modify it if you need to add extra parameters:
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :password])
    super
  end
end
