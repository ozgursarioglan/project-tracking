module ApplicationHelper
    def avatar_url(user)
        gravatar_id = Digest::MD5::hexdigest(current_user.email).downcase
        "http://gravatar.com/avatar/#{gravatar_id}.png"
    end

    def title(text)
        content_for :title, text
      end

end
