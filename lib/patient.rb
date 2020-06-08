require_relative 'doctor.rb'
require_relative 'appointment.rb'


class Patient
    attr_reader :name
 @@all =[]   
    
    def initialize(name)
    @name =name
    save
    end


    def new_appointment
    # def new_appointment(date, doctor)
    #     Appointment.new(date, self, doctor)
    # end

    # def

    # def appointments
    #     Appointment.all.map{|k| k if k.patient.name == self.name}.select{|k| k}
    # end
    
    # def doctors
    #     Appointment.all.map{|k| k.doctor if k.patient.name == self.name}.select{|k| k}
    # end
    
    def save
    @@all<<self
    end

    def self.all
    @@all
    end

end