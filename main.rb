require_relative 'student'

jordan = Student.new("Jordan")
puts jordan
puts jordan.description #calling the method on the CLASS because we used 'include' to mixin

puts Student.has_car?

jordan.student_age(28)