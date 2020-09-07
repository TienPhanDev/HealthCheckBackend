class Api::V1::VaccinationRecordsController < ApplicationController
    skip_before_action :logged_in?, only: [:create, :update]
    
    def create
        vaccination_record = VaccinationRecord.new(vaccination_record_params)

        if vaccination_record.valid?
            vaccination_record.save
            render json: {success: "Successful submission"}
        else
            render json: {error: "Failed to submit vaccine data", messages: ['Check submission information']}
        end
    end

    def update 
        @vaccination_record = VaccinationRecord.find(params[:id])
        if @vaccination_record.update(vaccination_record_params)
            render json: @vaccination_record.to_json
        else
            render json: @vaccination_record.errors, status: :unprocessable_entity
        end
    end 

    private

    def vaccination_record_params
        params.require(:vaccination_record).permit(:user_id, :tetanus, :flu, :pneumonia, :shingles, :date)
    end
end
