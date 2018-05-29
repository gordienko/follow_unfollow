module FollowUnfollow
  module Helper
    def follow_unfollow_button(followable_object)
      if current_user
        button_tag class: ['btn btn-xs followButton', ('following_button' if current_user.following?(followable_object))].join(' '),
                     onclick: 'click_following_button(this);', id: followable_object.id, 'data-info': followable_object.class.to_s do
            current_user.following?(followable_object) ? t('following', scope: 'follow_unfollow') : t('follow', scope: 'follow_unfollow')
        end
      end
    end
  end
end