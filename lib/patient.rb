require_relative 'doctor.rb'
require_relative 'appointment.rb'


class Patient
    attr_reader :name
 @@all =[]   
    
    def initialize(name)
    @name =name
    save
    end


    
    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end
    
  #   describe '#new_appointment' do
  #   it 'given a date and doctor, creates a new appointment belonging to that patient' do
  #     doctor_who = Doctor.new('The Doctor')
  #     hevydevy = Patient.new('Devin Townsend')
  #     appointment = hevydevy.new_appointment('Friday, January 32nd', doctor_who)

  #     expect(hevydevy.appointments).to include(appointment)
  #     expect(appointment.patient).to eq(hevydevy)
  #   end
  # end

    def

    def appointments
        Appointment.all.map{|k| k if k.patient.name == self.name}.select{|k| k}
    end
    
    def doctors
        Appointment.all.map{|k| k.doctor if k.patient.name == self.name}.select{|k| k}
    end
    
    def save
    @@all<<self
    end

    def self.all
    @@all
    end

end