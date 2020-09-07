class Api::V1::UsersController < ApplicationController
    skip_before_action :logged_in?

    def create
        user = User.new(user_params)

        if user.valid?
            user.save
            render json: {user: user, token: encode_token({user_id: user.id})}
        else
            render json: {error: "Failed to create the user"}
        end
    end

    def show
        user = User.find(params[:id])
        render json: user.to_json(
            :include => {
                :bp_screens => {
                    :methods => [:created_date]
                },
                :sugar_screens => {
                    :methods => [:created_date]
                },
                :vaccination_record => {
                    :methods => [:created_date]
                }
            }   
        )
    end
    
    def update 
        user = User.find(params[:id])
        user.update(user_params)
        render json: user.to_json(
            :include => {
                :bp_screens => {
                    :methods => [:created_date]
                },
                :sugar_screens => {
                    :methods => [:created_date]
                },
                :vaccination_record => {
                    :methods => [:created_date]
                }
            }   
        )
    end 

    def destroy
        user = user.find(params[:id])
        if user.destroy
            head :no_content, status: :ok
        else
            render json: user.errors, status: :unprocessable_entity
        end
    end

    private
    
    def user_params
        params.require(:user).permit(:username, :password, :age, :email)
    end

end
