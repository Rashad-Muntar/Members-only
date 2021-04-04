module PostsHelper
  def show_user_post(post)
    content_tag(:td, post.user_id) unless current_user.nil?
  end

  def display_username(post)
    content_tag(:td, post.user.username) unless current_user.nil?
  end

  def show_user_name
    content_tag(:td, current_user.username) unless current_user.nil?
  end

  def display_error
    content_tag(:ul) do
      @post.errors.collect do |error|
        content_tag(:li, error.full_message)
      end.join.html_safe
    end
  end
end
