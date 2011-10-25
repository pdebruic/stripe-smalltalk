*stripe
functionName 
	^functionName isNil ifTrue: ['function('] ifFalse:['function ', functionName , '('] 