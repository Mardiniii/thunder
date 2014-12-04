class RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|      
      UserMailer.welcome_email(resource) #if resource.persisted?
    end
  end
end