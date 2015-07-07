*ConversationManager
fromConversationString: aString
	| splitted date time dateSplitted timeSplitted |
	splitted := aString substrings: Character space asString.
	date := splitted at: 1.
	time := splitted at: 2.
	dateSplitted := date substrings: $/ asString.
	timeSplitted := time substrings: $: asString.
	^ self
		year: (dateSplitted at: 3) asInteger
		month: (dateSplitted at: 2) asInteger
		day: (dateSplitted at: 1) asInteger
		hour: (timeSplitted at: 1) asInteger
		minute: (timeSplitted at: 2) asInteger
		second: (timeSplitted at: 3) asInteger