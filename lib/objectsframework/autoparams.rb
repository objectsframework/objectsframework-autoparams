module ObjectsFramework
	module AutoParams
		def self.included(child)
			child.add_hook(:filter => "object.before_execute", :method => "autoparams_create_instance_methods")
		end

		def autoparams_create_instance_methods
			request.params.each_pair do |key,value|
				self.define_singleton_method key, lambda {value}
			end
		end
	end
end
