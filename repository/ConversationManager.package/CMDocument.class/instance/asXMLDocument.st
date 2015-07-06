xml
asXMLDocument
	| root |
	root := XMLElement name: 'conversations'.
	self conversations do: [ :conversation |
		root addNode: conversation asXMLElement ].
	^XMLDocument root: root