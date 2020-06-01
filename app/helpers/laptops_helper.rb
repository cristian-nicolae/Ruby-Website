module LaptopsHelper
	def laptop_author(laptop)
		user_signed_in? && current_user.id==laptop.user_id
	end
end
