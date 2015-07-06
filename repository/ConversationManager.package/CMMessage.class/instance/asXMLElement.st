xml
asXMLElement
	^ XMLElement name: 'message' attributes: { 'body' -> self body.
															'date' -> self date.
															'type' -> self messageType }