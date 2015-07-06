comparing
= anObject
	^anObject isCMConversation
		and: [ anObject with = self with
			and: [ anObject phone = self phone ] ]