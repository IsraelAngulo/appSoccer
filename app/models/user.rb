class User < ActiveRecord::Base
	acts_as_authentic
	
	belongs_to:typedocument
	belongs_to :typeuser
	belongs_to:sex
	
	validates_uniqueness_of :dni
	
	validate :check_email

	def check_email
		if email != email_confirmation
			errors.add(:email, "doesn't match confirmation")
		end
	end
end
