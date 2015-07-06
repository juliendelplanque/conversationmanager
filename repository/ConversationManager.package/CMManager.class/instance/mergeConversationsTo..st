document management
mergeConversationsTo: aPath
	| xmlFiles finalDoc |
	xmlFiles := self directory childrenMatching: '*.xml'.
	finalDoc := CMDocument fromFile: (xmlFiles at: 1).
	xmlFiles from: 2 to: xmlFiles size do: [ :file |
		| tempDoc |
		tempDoc := CMDocument fromFile: file.
		finalDoc mergeWith: tempDoc ].
	finalDoc writeAsXMLInFile: aPath