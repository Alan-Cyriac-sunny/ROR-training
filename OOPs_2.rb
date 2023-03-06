# frozen_string_literal: true

# Problem: Alice is a programmer who is working on a project that involves
# creating a new class called Vehicle. The Vehicle class has several public
# methods, such as start_engine and stop_engine. Alice's colleague, Bob, is
# working on a subclass of Vehicle called Car. Car inherits all of the public
# methods from Vehicle, but Bob needs to add some new functionality to the
# start_engine method. How can Bob access the start_engine method in the
# Vehicle class so he can use it in his Car subclass?

class Vehicle
  def initialize
    startEngine
    stopEngine
  end

  def startEngine
    puts 'Engine Running'
  end

  def stopEngine
    puts 'Engine stopped'
  end
end

class Car < Vehicle
  def initialize
    startEngine
    stopEngine
  end

  def startEngine
    super
    puts 'Music On'
  end

  def stopEngine
    super
    puts 'Music Off'
  end
end

bike = Vehicle.new
car = Car.new
