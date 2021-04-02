module PostsHelper
  def show_user_post(post)
    content_tag(:td, post.user_id) unless current_user.nil?
  end

  def show_user_name
    content_tag(:td, current_user.username) unless current_user.nil?
  end
end
