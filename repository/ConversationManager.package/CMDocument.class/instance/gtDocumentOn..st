gtinspector
gtDocumentOn: aComposite
	<gtInspectorPresentationOrder: 1>
	
	aComposite table
		title: 'Conversations';
		display: [ self conversations ];
		column: 'With' evaluated: [ :each | each with ];
		column: 'Phone' evaluated: [ :each | each phone ].