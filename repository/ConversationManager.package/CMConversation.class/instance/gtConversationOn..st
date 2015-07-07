gtinspector
gtConversationOn: aComposite
	<gtInspectorPresentationOrder: 1>

	aComposite table
		title: 'Messages';
		display: [ self messages sorted: [ :x :y | x date < y date ] ];
		column: 'Author' evaluated: [ :each | each isReceived ifTrue: [ self with ] ifFalse: [ 'Me' ] ];
		column: 'Date' evaluated: [ :each | each date asConversationString ];
		column: 'Content' evaluated: [ :each | each body ].