accessing
subConversationFrom: start to: stop
	"Create a copy of this conversation that only contains messages with a date in [start, stop]."
	| newMessages sub |
	newMessages := self messages select: [ :message |
		message date between: start and: stop + (Duration days: 1) ].
	sub := self copy.
	sub messages: newMessages.
	^ sub