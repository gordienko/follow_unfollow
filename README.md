# FollowUnfollow (Follow or UnFollow)

Follow Unfollow is a Ruby gem it provides Twitter kind of follow and unfollow functionality with both frontend and backend features.

It works with the dependency of acts_as_follower gem for more details [acts_as_follower](https://github.com/tcocaa/acts_as_follower) 

![follow-unfollow](https://github.com/gordienko/follow_unfollow/blob/master/follow-unfollow.gif)

##Setup 

## Gem Installation

Add this lines to your application's Gemfile:

    gem 'acts_as_follower', github: 'tcocca/acts_as_follower', branch: 'master'
    gem 'follow_unfollow', github: 'gordienko/follow_unfollow'

And then execute:

    $ bundle

## Database Migration
  
  Create migration for Follow polymorphic table for follow entries, add model and route

  ```ruby
    rails g follow_unfollow
  ```

  Finally run:
  ```ruby
  rake db:migrate
  ```
##Usage

  Add below code in you Followable Model reesource.
  ```ruby
  acts_as_followable
  ```
  For eg:
  ```ruby
  class Tag < ActiveRecord::Base
    acts_as_followable
  end
  ```
  Add below code in your Voter Resource Model resource.
  ```ruby
  acts_as_follower
  ```
  For eg:
  ```ruby
  class User < ActiveRecord::Base
    acts_as_follower
  end
  ```

  require the file in javascript and stylesheet in application:
  ```ruby
  #in application.coffee
  //= require follow_unfollow
  #in application.css
  *= require follow_unfollow
  ```

  Here the ultimate things comes, add this line wherever you want follow and unfollow button want to enable with resource:
  ```ruby
  <%= follow_unfollow_button(resource) %>
  ```

  For eg:
  ```ruby
  #tag is the object
  <%= follow_unfollow_button(@tag) %>  
  ```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/follow_unfollow/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
