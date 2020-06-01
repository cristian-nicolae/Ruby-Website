module WatchesHelper
	def watch_author(watch)
		user_signed_in? && current_user.id==watch.user_id
	end
end
