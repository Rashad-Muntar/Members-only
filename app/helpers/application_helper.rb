module ApplicationHelper
  def show_sign_out
    out = ''
    out << link_to('Sign Out', destroy_user_session_path, method: :delete) if user_signed_in?
    out.html_safe
  end

  def show_sign_in
    out = ''
    out << link_to('Sign in', user_session_path) unless user_signed_in?
    out.html_safe
  end

  def show_sign_up
    out = ''
    out << link_to('Sign up', new_user_registration_path) unless user_signed_in?
    out.html_safe
  end
end
