class User < ApplicationRecord
    has_many :logs
    has_many :emotions, through: :logs

    def make_emotion_list(emotion)
        self.emotions.all.where('name like?', emotion).order(created_at: :asc)
    end

end
