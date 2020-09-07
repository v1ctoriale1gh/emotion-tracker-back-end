class UsersController < ApplicationController
    before_action :set_user

    def create
        user = User.create(user_params)
            if user.valid?
                render json: user, except: [:created_at, :updated_at, :password_digest]
            else
                render json: { signuperror: 'Username taken or fields unfilled.  Please, try again.' }
            end
    end

    def emotion
        #byebug
        emotion = params[:emotion]
        emotion_list = @user.make_emotion_list(emotion)
        render json: emotion_list.to_json(:except => [:log_id, :updated_at] )
    end

    def login
        #byebug
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            render json: user, except: [:created_at, :updated_at, :password_digest]
        else
            render json: { loginerror: 'Username not found or password invalid. Please, try again.' }
        end
    end


    private

    def set_user
        @user = User.find_by(id: params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :username, :password)
    end

end
