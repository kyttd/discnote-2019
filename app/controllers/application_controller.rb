class ApplicationController < ActionController::Base 
 
  include SessionsHelper
  
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end


  def counts(user)
    @count_reviews = user.reviews.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    @count_favreviews = user.favreviews.count
    @count_clips = user.clip_albums.count
  end
  

  
  
end