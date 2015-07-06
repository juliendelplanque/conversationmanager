I manage conversation xml files and provides operations on them.

manager := CMManager onDir: (FileLocator temp / 'directory').
manager mergeConversationsTo: (FileLocator workingDirectory / 'test.xml').