module FollowUnfollow
  class FollowsController < ActionController::Base
    before_action :find_followable
    before_action :authenticate_user!
    respond_to :js

    def create
      current_user.follow @followable
      render json: render_follows
    end

    def destroy
      current_user.stop_following @followable
      render json: render_follows
    end

    private

    def render_follows
      [current_user.following?(@followable)]
    end

    def find_followable
      @followable_type = params[:followable_type].classify
      @followable = @followable_type.constantize.find(params[:followable_id])
    end

  end
end