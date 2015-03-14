module ObjectsFramework
	class ObjectHandler
			def self.finished(klass,request,response,context)
				request.params.each_pair do |key,value|
					klass.define_singleton_method key, lambda {value}
				end
			end
	end
end
