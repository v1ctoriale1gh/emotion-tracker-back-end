class User < ApplicationRecord
    has_many :logs
    has_many :emotions, through: :logs
    validates :name, presence: true
    validates :username, presence: true
    has_secure_password

    def make_emotion_list(emotion)
        self.emotions.all.where('name like?', emotion).order(created_at: :asc)
    end

end
