class Patient 
  attr_accessor :name, :date, :doctor 
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end 
  
  def appointments
    Appointment.all.select do |patient|
      patient.patient == self
    end
  end 
  
  def doctors
    self.appointments.collect do |song|
      song.doctor
    end
  end
  
end 