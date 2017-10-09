require_relative 'ruby_module_car'
require_relative 'student_type_error'

class Student

	include Car #'include' makes it an INSTANCE method.  'extend' makes it an CLASS method
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def student_age(age) #ERROR CHECKING
		puts "BEFORE begin-end block of code"
		# x = 1/0

		begin
			puts "Hi is this working"

		raise ArgumentError, "Argument is not a number" unless age.is_a? Integer

		raise StudentTypeError, "This is not an NSS Student"  #this error is being called

			puts "Is it still working"
			puts "#{name} is #{age} years old."

		rescue ArgumentError => e
			puts "There's been an exception"
			puts "Exception message: #{e.message}"
			puts "Exception backtrace: #{e.backtrace}"

		rescue ZeroDivisionError => e  #will catch the divide by zero error
			puts "Don't divide by zero"

		rescue StudentTypeError => e
			puts "Error: #{e.message}"

		else
			puts "Run this shit if everything goes well"

		ensure #ensure will ALWAYS run, exception or no
			puts "THIS CODE ALWAYS RUNS!!!"

		end
		puts "AFTER begin-end block of code"
	end
end