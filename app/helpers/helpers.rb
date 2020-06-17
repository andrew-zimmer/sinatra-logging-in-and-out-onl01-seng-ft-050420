class Helpers
    def self.current_user(hash)
        User.find(hash[:user_id])
    end

    def self.is_logged_in?(hash)
        hash[:user_id] == self.current_user(hash).id
    end
end
