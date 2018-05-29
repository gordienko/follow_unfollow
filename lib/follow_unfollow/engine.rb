require "rubygems"
require 'acts_as_follower'
require 'jquery-turbolinks'
require 'i18n-js'

module FollowUnfollow
  class Engine < ::Rails::Engine
    isolate_namespace FollowUnfollow
  end
end
