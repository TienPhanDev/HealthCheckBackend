class VaccinationRecord < ApplicationRecord
    belongs_to :user

    def created_date
        return self.created_at.strftime('%m/%-d/%Y')
    end
end