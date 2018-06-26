class Odogwus::OmniauthCallbacksController < Devise::OmniauthCallbacksController
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
    
end