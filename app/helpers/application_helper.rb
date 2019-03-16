module ApplicationHelper

    def avatar_url(user)
        gravatar_id = Digest::MD5::hexdigest(current_user.email).downcase
        "http://gravatar.com/avatar/#{gravatar_id}.png"
    end

    def title(page_title)
        content_for(:title) { page_title }
    end

end
