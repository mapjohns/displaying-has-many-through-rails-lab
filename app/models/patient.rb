class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def appt_count
        self.appointments.count
    end

    def format_appt
        self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
    end
end
