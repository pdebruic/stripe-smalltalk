*StripePharoExample
createFunctionNameInJSFunction
|jsFunctionClass|
jsFunctionClass:=
	(Smalltalk at: #JSFunction ifAbsent:[nil]).
	jsFunctionClass notNil ifTrue:[(jsFunctionClass  instVarNames includes: 'functionName')
		ifFalse: [ jsFunctionClass  addInstVarNamed: 'functionName' ]]