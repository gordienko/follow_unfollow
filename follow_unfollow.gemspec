# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'follow_unfollow/version'

Gem::Specification.new do |spec|
  spec.name          = "follow_unfollow"
  spec.version       = FollowUnfollow::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Alexey Gordienko"]
  spec.email         = ["alx@anadyr.org"]
  spec.summary       = "Follow Unfollow by user"
  spec.description   = "Like Follow/Unfollow by user by any object resource, dependency of acts_as_follower"
  spec.homepage      = "https://github.com/gordienko/follow_unfollow"
  spec.licenses       = ["MIT"]

  spec.files         = `git ls-files`.split("\n")
  spec.files         = Dir.glob("{bin,lib,app,config}/**/*")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("acts_as_follower")
  spec.add_dependency("jquery-turbolinks")
  spec.add_dependency("i18n-js")
end
