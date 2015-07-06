writing
writeAsXMLInFile: aPath
	"Write the xml representation of this object in the file. If the file already exists, overrite it
	 without asking!"
	| writer outputFileStream |
	writer := XMLWriter new
					enablePrettyPrinting;
					xml;
					yourself.
	self asXMLDocument writeXMLOn: writer.
	outputFileStream := FileStream forceNewFileNamed: aPath.
	outputFileStream
		<< writer contents;
		close.