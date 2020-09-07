class LogsController < ApplicationController

    def index
        #byebug
        user = User.find_by(id: params[:user_id])
        logs = user.logs.last(10)
        render json: logs.to_json(:include => {
            #:user => {:only => [:name, :id]},
            :emotions => {:only => [:name, :intensity]}
            }, :except => [:user_id, :updated_at])
    end

    def create
        #byebug
        log = Log.create(user_id: params[:user_id])
        Emotion.create(log_id: log.id, name: "Fear", intensity: params["log"]["Fear"])
        Emotion.create(log_id: log.id, name: "Anger", intensity: params["log"]["Anger"])
        Emotion.create(log_id: log.id, name: "Sadness", intensity: params["log"]["Sadness"])
        Emotion.create(log_id: log.id, name: "Anxiety", intensity: params["log"]["Anxiety"])
        Emotion.create(log_id: log.id, name: "Happiness", intensity: params["log"]["Happiness"])
        Emotion.create(log_id: log.id, name: "Peacefulness", intensity: params["log"]["Peacefulness"])
        Emotion.create(log_id: log.id, name: "Gratitude", intensity: params["log"]["Gratitude"])
        render json: "Success!"
    end

end
