*ConversationManager
asConversationString
	| stream |
	stream := WriteStream on: (String new: 17).
	(self dayOfMonth < 9) ifTrue: [ stream << $0 ].
	stream
		<< self dayOfMonth asString;
		<< $/.
	(self monthIndex < 9) ifTrue: [ stream << $0 ].
	stream
		<< self monthIndex asString;
		<< $/;
		<< self year asString;
		<< Character space.
	self printHMSOn: stream.
	^stream contents