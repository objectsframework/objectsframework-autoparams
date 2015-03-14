ObjectsFramework Autoparams
============================

Autoparams is an experimental extension for ObjectsFramework.

It will define methods for each parameter you receive in your HTTP request, so for example you have a HTTP request GET /?name=John, you will have the method "name" available that will contain the content of the parameter.

Example:
```
# GET /app/index?name=John
class App < ObjectsFramework::Object
	def get_index
		response.write "Hello #{name}"
	end
end
```

## License
Like all ObjectsFramework extensions the license is MIT.
