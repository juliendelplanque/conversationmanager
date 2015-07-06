instance creation
fromXMLNode: anXMLNode
	^self new
		with: (anXMLNode attributeAt: 'with');
		phone: (anXMLNode attributeAt: 'phone');
		messages: (anXMLNode nodes collect: [ :node | CMMessage fromXMLNode: node ]);
		yourself