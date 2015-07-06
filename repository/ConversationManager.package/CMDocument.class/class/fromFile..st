as yet unclassified
fromFile: aPath
	| xmlDoc conversations |
	xmlDoc := XMLDOMParser parseFileNamed: aPath.
	conversations := ((xmlDoc nodes at: 1) nodes
										collect: [:conversation | CMConversation fromXMLNode: conversation ]).
	^ self new
		conversations: (OrderedCollection newFrom: conversations);
		yourself