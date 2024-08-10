class UserRegistrationService
    def initialize(user_params)
      @user_params = user_params
    end
  
    def call
      user = User.new(@user_params)
      if user.save
        UserMailer.welcome_email(user).deliver_now
        return user
      else
        raise StandardError.new("User registration failed")
      end
    end
  end
  