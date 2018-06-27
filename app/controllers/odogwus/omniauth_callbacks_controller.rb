# frozen_string_literal: true

class Odogwus::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]
  
  def all_Omnis
    @odogwu = Odogwu.from_omniauth(request.env["omniauth.auth"])
    if @odogwu.persisted?
      flash.notice = "Signed in"
      sign_in_and_redirect @odogwu
      
    else
      session["devise.odogwu_attributes"] = @odogwu.attributes
      redirect_to new_odogwu_registration_url
    end
  end
  [:facebook, :github].each{|ali| alias_method ali, :all_Omnis} 

  
  def failure
    redirect_to root_path
  end
    


  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
