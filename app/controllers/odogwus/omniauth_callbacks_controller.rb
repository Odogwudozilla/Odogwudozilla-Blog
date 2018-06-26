class Odogwus::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @odogwu = Odogwu.from_omniauth(request.env["omniauth.auth"])
    if @odogwu.persisted?
      sign_in_and_redirect @odogwu
      set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_odogwu_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
    
end