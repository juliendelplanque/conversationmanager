instance creation
fromXMLNode: anXMLNode
	^self new
		with: (anXMLNode attributeAt: 'with');
		phone: (anXMLNode attributeAt: 'phone');
		messages: ((anXMLNode nodes collect: [ :node | CMMessage fromXMLNode: node ])
						sorted: [ :m1 :m2 | m1 date < m2 date ]);
		yourself