instance creation
fromXMLNode: anXMLNode
	^self new
		body: (anXMLNode attributeAt: 'body');
		messageType: (anXMLNode attributeAt: 'type');
		date: (anXMLNode attributeAt: 'date');
		yourself