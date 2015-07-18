ObjectsFramework Autoparams
============================
__Only supports ObjectsFramework 1.2 and up__

Autoparams is an experimental extension for ObjectsFramework.

__Breaking changes if you migrate from version 1.0 to 2.0__

AutoParams will define methods for each parameter you receive in your HTTP request, so for example you have a HTTP request GET /?name=John, you will have the method "name" available that will return the content of the parameter.

Example:
```
require 'objectsframework/autoparams'

# GET /app/index?name=John
class App < ObjectsFramework::Object
	include ObjectsFramework::AutoParams

	def get_index
		response.write "Hello #{name}"
	end
end
```

## Support for ObjectsFramework 1.1 and below

The current version of this extension doesn't support ObjectsFramework 1.1 because this version doesn't have object hooks.

Previously this extension used to overwrite the "finished" method of the ObjectHandler object, but this method was removed in version 1.2 of ObjectsFramework.

ObjectsFramework versions below 1.1 have neither of those two features.

## License
MIT
