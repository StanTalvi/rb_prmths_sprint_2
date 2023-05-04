require_relative("./Student")
require_relative("./StudentGroup")

gr1 = StudentGroup.new(42, "Wierd Scholarship")

st1 = Student.new(1, "Stan", "Talvi", "1987-10-27")
st2 = Student.new(2, "Evil", "Twin", "1988-11-28")
st3 = Student.new(3, "Aulus", "Agerius", "0033-04-14")
st4 = Student.new(4, "Numerius", "Negidius", "0045-09-01")

gr1.add_student(st1)
gr1.add_student(st2)
gr1.add_student(st3)
gr1.add_student(st4)

puts st1
puts "************"
gr1.show_students