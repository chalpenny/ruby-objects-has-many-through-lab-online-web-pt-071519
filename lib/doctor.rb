
class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Patient.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |x| x.doctor == self
    end
  end

  def patients
    Patients.all.select do |x| x.doctor == self
    end
  end

end
