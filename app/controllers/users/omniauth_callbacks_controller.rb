# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter, :facebook, :google_oauth2]

  # Callback for Twitter
  def twitter
    handle_omniauth('twitter')
  end

  # Callback for Facebook
  def facebook
    handle_omniauth('facebook')
  end

  # Callback for Google
  def google_oauth2
    handle_omniauth('google_oauth2')
  end

  # Handles OmniAuth callbacks for supported providers
  def handle_omniauth(provider)
    @user = User.from_omniauth(request.env['omniauth.auth'])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: provider.capitalize) if is_navigational_format?
    else
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end

  # The path used when OmniAuth fails
  def after_omniauth_failure_path_for(scope)
    # Customize this path as needed
    new_user_session_path
  end
end
