class Post < ApplicationRecord
  belongs_to :user

  def userId
    @post_id = current_user.posts.build(params[:post])
  end

end
