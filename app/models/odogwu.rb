# == Schema Information
#
# Table name: odogwus
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  superadmin_role        :boolean          default(FALSE)
#  junioradmin_role       :boolean          default(FALSE)
#  user_role              :boolean          default(TRUE)
#

class Odogwu < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :omniauthable, :omniauth_providers => [:facebook, :github] # devise functionality for the Omniauth providers

  has_many :posts

  def self.from_omniauth(auth) # checks the credentials from the omniauth provider
    where(provider: auth.provider, uid: auth.uid).first_or_create do |odogwu|
      odogwu.email = auth.info.email
      odogwu.password = Devise.friendly_token[0,20]
    end
  end

  def self.new_with_session(params, session) #for Omniauth
      if session["devise.odogwu_attributes"]
        new(session["devise.odogwu_attributes"]) do |odogwu|
          odogwu.attributes = params
          odogwu.valid?
        end
      else
        super 
      end
  end
  def password_required?
    super && provider.blank?
  end 

  def update_with_password(params, *options) # checks if the encrypted pasword for omniauth is present
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
    
  end
  
end
