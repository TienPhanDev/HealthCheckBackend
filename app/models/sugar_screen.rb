class SugarScreen < ApplicationRecord
    belongs_to :user

    validates :result, length: { in: 1..3 }
    validates_presence_of :result
    validates :result, numericality: { only_integer: true }

    def created_date
        return self.created_at.strftime('%m/%-d/%Y')
    end
end