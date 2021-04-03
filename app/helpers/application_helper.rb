module ApplicationHelper

    def show_sign_out
        out = ''
        if user_signed_in?
          out << link_to('Sign Out', destroy_user_session_path, method: :delete)
        end
        out.html_safe
      end

      def show_sign_in
        out = ''
        if !user_signed_in?
          out << link_to('Sign in', user_session_path )
        end
        out.html_safe
      end

      def show_sign_up
        out = ''
        if !user_signed_in?
          out << link_to('Sign up', new_user_registration_path)
        end
        out.html_safe
      end
end
