class BpScreen < ApplicationRecord
    belongs_to :user

    validates_presence_of :systolic_pressure, :diastolic_pressure
    validates :systolic_pressure, length: { in: 2..4 }
    validates :diastolic_pressure, length: { in: 2..4 }
    validates :systolic_pressure, numericality: { only_integer: true }
    validates :diastolic_pressure, numericality: { only_integer: true }

    def created_date
        return self.created_at.strftime('%m/%d/%Y')
    end

end
