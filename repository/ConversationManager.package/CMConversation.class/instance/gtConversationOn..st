gtinspector
gtConversationOn: aComposite
	<gtInspectorPresentationOrder: 1>

	aComposite table
		title: 'Messages';
		display: [ self messages sorted: [ :x :y | x date < y date ] ];
		column: 'Date' evaluated: [ :each | each date ];
		column: 'Content' evaluated: [ :each | each body ].