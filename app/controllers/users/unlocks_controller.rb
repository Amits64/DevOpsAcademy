# frozen_string_literal: true

class Users::UnlocksController < Devise::UnlocksController
  # GET /resource/unlock/new
  # Displays the form for users to request an unlock email.
  def new
    super
  end

  # POST /resource/unlock
  # Sends an unlock instructions email to the user.
  def create
    super
  end

  # GET /resource/unlock?unlock_token=abcdef
  # Displays the unlock form to unlock the user account.
  def show
    super
  end

  # protected

  # The path used after sending unlock instructions.
  def after_sending_unlock_instructions_path_for(resource)
    # Customize this path if you want to redirect users to a specific page
    # after sending unlock instructions, for example:
    # new_user_session_path
    super(resource)
  end

  # The path used after unlocking the user account.
  def after_unlock_path_for(resource)
    # Customize this path if you want to redirect users to a specific page
    # after unlocking their account, for example:
    # root_path
    super(resource)
  end
end
