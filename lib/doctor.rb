class Doctor

  @@all=[]

  attr_accessor :name,:appointments

  def initialize(name)
    @name=name
    @appointments=[]
    @@all << self
  end

  def new_appointment(patient,date)
     appointment = Appointment.new(patient,self,date)
     @appointments << appointment
     appointment
  end

  def self.all
    @@all
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end


end