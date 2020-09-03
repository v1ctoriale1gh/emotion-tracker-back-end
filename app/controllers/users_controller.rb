class UsersController < ApplicationController
    before_action :set_user

    def show
        render json: @user.to_json(:except => [:password_digest, :created_at, :updated_at])
    end

    def emotion
        byebug
        emotion = params[:emotion]
        emotion_list = @user.make_emotion_list(emotion)
        render json: emotion_list.to_json(:except => [:log_id, :updated_at] )
        
    end

    private

    def set_user
        @user = User.find_by(id: params[:id])
    end

end
