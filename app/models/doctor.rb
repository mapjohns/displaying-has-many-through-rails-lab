class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments
    
    def format_date
        self.appointment_datetime.strftime("%B %d, %Y at %l:%M")
    end
end
