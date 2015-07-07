statistics
averageMessagesPerHour
	| duration |
	duration := (DateAndTime now - (self messages first date)).
	^(self messageCount / (((duration days = 0) ifTrue: [ 1 ] ifFalse: [ duration days ]) * 24)) asFloat