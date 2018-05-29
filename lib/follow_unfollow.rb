require "follow_unfollow/version"
require "follow_unfollow/helper"
require "acts_as_follower"

module FollowUnfollow
	module Rails
		if ::Rails.version < "3.1"
			require "follow_unfollow/railtie"
		else
			require "follow_unfollow/engine"
		end
	end
end

ActionView::Base.send :include, FollowUnfollow::Helper
