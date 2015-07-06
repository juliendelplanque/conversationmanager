messages
mergeWith: anotherConversation
	anotherConversation messages do: [ :message |
		(self includes: message)
			ifFalse: [ self addMessage: message ]
		 ].