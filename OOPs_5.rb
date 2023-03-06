# frozen_string_literal: true

# Once upon a time, there was a software company that specialized in
# developing complex applications for the healthcare industry. The
# company had a class called Patient that stored information about
# patients in a hospital, such as their name, age, and medical history.
# The class had private, protected, and public methods to ensure that
# the data was secure and could only be accessed in appropriate ways.
# The company later decided to develop another application for the
# healthcare industry that also needed to store patient information,
# but with additional functionality. They created a new class called
# EmergencyPatient that inherited from the Patientclass. Using EmergencyPatient
# class display all patient details

class Patient
  def initialize(name, age, medical_history)
    @name = name
    @age = age
    @medical_history = medical_history
  end

  attr_reader :name, :age, :medical_history

  private

  def update_medical_history(new_history)
    @medical_history = new_history
  end

  protected

  def check_age
    if @age < 18
      puts 'minor.'
    else
      puts 'adult.'
    end
  end
end

class EmergencyPatient < Patient
  def initialize(name, age, medical_history, emergency_contact)
    super(name, age, medical_history)
    @emergency_contact = emergency_contact
  end

  def display_details
    puts "Name: #{@name}\nAge: #{@age}\nMedical history: #{@medical_history}
    	\nEmergency contact: #{@emergency_contact}"
    check_age
  end
end

patient = EmergencyPatient.new('Hobbs', 30, 'High blood pressure', 'Dom')
patient.display_details
