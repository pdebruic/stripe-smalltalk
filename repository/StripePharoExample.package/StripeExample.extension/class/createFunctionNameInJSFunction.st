*StripePharoExample
createFunctionNameInJSFunction
	(JSFunction instVarNames includes: 'functionName')
		ifFalse: [ JSFunction addInstVarNamed: 'functionName' ]