module Car

	module ClassMethods #class methods module that will extend to includes
		def has_car?
			true
		end
	end

	def self.included(base) #this extends the class methods module to mixins
		base.extend(ClassMethods)
	end

	#anything under def.self etc is an instance method
	def description
		"Car description"
	end

end