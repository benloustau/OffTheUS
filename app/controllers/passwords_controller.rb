class PasswordsController < Devise::PasswordsController

	def edit
  self.resource = resource_class.send_reset_password_instructions(resource_params)

  respond_with({}, :location => after_sending_reset_password_instructions_path_for(resource_name))
end