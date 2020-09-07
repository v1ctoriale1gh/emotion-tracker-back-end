class UsersController < ApplicationController
    before_action :set_user

    def create
        user = User.create(user_params(:name, :username, :password))
            if user.valid?
                render json: user, except: [:created_at, :updated_at]
            else
                render json: { error: 'Failed to create user. Please make sure all fields are filled and try again.' }
            end
    end

    def emotion
        #byebug
        emotion = params[:emotion]
        emotion_list = @user.make_emotion_list(emotion)
        render json: emotion_list.to_json(:except => [:log_id, :updated_at] )
    end

    private

    def set_user
        @user = User.find_by(id: params[:id])
    end

    def user_params(*args)
        params.require(:user).permit(*args)
    end

end
