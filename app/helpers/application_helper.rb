module ApplicationHelper

    def show_signout
        out = ''
        if user_signed_in?
          out << link_to('Sign Out', destroy_user_session_path, method: :delete)
        end
        out.html_safe
      end

      def show_signin
        out = ''
        if !user_signed_in?
          out << link_to('Sign in', user_session_path )
        end
        out.html_safe
      end
end
