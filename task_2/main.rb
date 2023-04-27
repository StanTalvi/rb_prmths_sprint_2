require_relative("./Employee")
require_relative("./Manager")

puts "OOP Games"
e1 = Employee.new("John", "Doe", "1987-11-20", 5000)
e2 = Manager.new("Jane", "Doe", "1988-12-21", 5000, 2000)


puts(e1.to_s)
puts(e2.to_s)
