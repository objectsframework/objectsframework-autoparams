require 'objectsframework'
require 'objectsframework/autoparams'

class App < ObjectsFramework::Object
	include ObjectsFramework::AutoParams

	# GET /app/index?name=John
	def get_index
		response.write "Hello #{name}"
	end
end

run ObjectsFramework::Server.new
