operations
mergeWith: aCMDocument
	aCMDocument conversations do: [ :conversation |
		(self conversations includes: conversation)
			ifTrue: [
				| baseConversation |
				baseConversation := self conversations at: (self conversations indexOf: conversation).
				baseConversation mergeWith: conversation. ]
			ifFalse: [
				self conversations add: conversation ] ]