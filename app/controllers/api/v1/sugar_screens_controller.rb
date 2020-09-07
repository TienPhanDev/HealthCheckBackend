class Api::V1::SugarScreensController < ApplicationController
    skip_before_action :logged_in?, only: [:create]

    def create
        sugar_screen = SugarScreen.new(sugar_screen_params)

        if sugar_screen.valid?
            sugar_screen.save
            render json: {success: "Successful submission"}
        else
            render json: {error: "Failed to submit sugar data"}
        end
    end

    private

    def sugar_screen_params
        params.require(:sugar).permit(:user_id, :result, :date)
    end

end
