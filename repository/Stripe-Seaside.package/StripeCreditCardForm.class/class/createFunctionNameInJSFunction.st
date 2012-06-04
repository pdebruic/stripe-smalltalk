as yet unclassified
createFunctionNameInJSFunction
	(JSFunction instVarNames includes: 'functionName')
		ifFalse: [ JSFunction addInstVarNamed: 'functionNamed' ]