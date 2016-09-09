require 'pry'
class Person

	def self.define_properties(props)
		props.each do |prop|

			#Define the writer method
			define_method("#{prop}=") do |arg|
				instance_variable_set(:"@#{prop}", arg)
		    end
		    
            #Define the reader method
		    define_method(prop) do
		    	instance_variable_get(:"@#{prop}")
		    end
		end
	end

	self.define_properties([:name, :age])

end

binding.pry