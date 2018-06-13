class Odogwus::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
     @odogwu = Odogwu.from_omniauth(request.env["omniauth.auth"])
     sign_in_and_redirect @odogwu      
  end
end