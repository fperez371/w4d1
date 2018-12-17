class UsersController < ApplicationController
    # attr_reader :params
    # def initialize
    #   @params = params
    # end
    def show
      render json: User.find(params[:id])
    end

    def create
      user = User.new(params.require(:user).permit(:name, :email))
      if user.save
        render json: user
      else
        render json: user.errors.full_messages, status: :unprocessable_entity
      end
    end

    def index
      # portfolio_items = User.all
      render plain: "I'm in the index action!"
    end

    def update
      # debugger
      user_to_update = User.find(params[:id])
      user_to_update.update!(permitted_params)
      render json: user_to_update
    end

    def destroy
      user = User.find(params[:id])
      user.destroy
      render json: User.all

    end

    def edit

    end

    private

    def permitted_params
      params.require(:user).permit(:name, :email)
    end
end