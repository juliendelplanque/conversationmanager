comparing
= anObject
	^anObject isCMMessage
		and: [ anObject body = self body
			and: [ anObject date = self date
				and: [ anObject messageType = self messageType ] ] ]