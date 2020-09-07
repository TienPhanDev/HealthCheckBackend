class Api::V1::BpScreensController < ApplicationController
    skip_before_action :logged_in?, only: [:create]
    
    def create
        bp_screen = BpScreen.new(bp_screen_params)

        if bp_screen.valid?
            bp_screen.save
            render json: {success: "Successful submission"}
        else
            render json: {error: "Failed to submit BP data"}
        end
    end

    private

    def bp_screen_params
        params.require(:bp).permit(:user_id, :systolic_pressure, :diastolic_pressure, :date)
    end

end
