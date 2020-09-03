class LogsController < ApplicationController

    def index
        user = User.find_by(id: params[:user_id])
        logs = user.logs
        render json: logs.to_json(:include => {
            #:user => {:only => [:name, :id]},
            :emotions => {:only => [:name, :intensity]}
            }, :except => [:user_id, :updated_at])
    end

    def create
    end
end
