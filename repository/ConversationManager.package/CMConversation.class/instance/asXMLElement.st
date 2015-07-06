xml
asXMLElement
	| node |
	node := (XMLElement name: 'conversation' attributes: { 'with' -> self with.
																   		   'phone' -> self phone }).
	self messages do: [ :message |
		node addNode: message asXMLElement ].
	^node