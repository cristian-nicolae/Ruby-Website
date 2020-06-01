module SmartphonesHelper

	def smartphone_author(smartphone)
		user_signed_in? && current_user.id==smartphone.user_id
	end

	
end
