gtinspector
gtStatisticsOn: aComposite
	<gtInspectorPresentationOrder: 2>
	
	| statDict |
	statDict := Dictionary new.
	statDict
		at: 'Message count' put: self messageCount;
		at: 'Average per day' put: self averageMessagesPerDay;
		at: 'Average per hour' put: self averageMessagesPerHour.
		
	aComposite table
		title: 'Statistics';
		display: [ statDict keys sorted ];
		column: 'Statistics' evaluated: [ :each | each ];
		column: 'value' evaluated: [ :each | statDict at: each ]