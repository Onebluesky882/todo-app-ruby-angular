class Api::V1::UsersController < ApplicationController
    def index
        users = UserService.get_all_users
        render json: users
    end
    
    def show
        user = UserService.get_user_by_id(params[:id])
        render json: user
    end
    
    def update
        user = UserService.update_user(params[:id], user_params)
        render json: {
            message: 'User updated successfully',
            user: user
        }
    end
    
    def destroy
        UserService.delete_user(params[:id])
        render json: { message: 'User deleted successfully' }, status: :ok
    end

    def create
        user_dto = UserDto::CreateUsers.new(user_params)
        if user_dto.valid?
            user = UserService.create_user(user_dto.attributes)
            render json: { message: 'User created successfully' }, status: :created
        else
            render json: { errors: user_dto.errors }, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.permit(:name, :email, :job)
    end
end
