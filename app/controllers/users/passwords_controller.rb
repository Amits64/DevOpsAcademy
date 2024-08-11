# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
  # Displays the form for users to request a password reset.
  def new
    super
  end

  # POST /resource/password
  # Sends the reset password instructions to the user.
  def create
    super
  end

  # GET /resource/password/edit?reset_password_token=abcdef
  # Displays the form for users to enter a new password.
  def edit
    super
  end

  # PUT /resource/password
  # Updates the user's password.
  def update
    super
  end

  # The path used after resetting the password.
  protected

  def after_resetting_password_path_for(resource)
    # Customize this path as needed, for example:
    # super(resource) or
    # your_custom_path
    super(resource)
  end

  # The path used after sending reset password instructions.
  def after_sending_reset_password_instructions_path_for(resource_name)
    # Customize this path as needed, for example:
    # super(resource_name) or
    # your_custom_path
    super(resource_name)
  end
end
