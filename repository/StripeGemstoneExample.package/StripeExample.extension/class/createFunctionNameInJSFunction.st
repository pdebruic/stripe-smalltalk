*stripegemstoneexample
createFunctionNameInJSFunction
  | jsFunc |
  jsFunc := Smalltalk at: #'JSFunction'.
  jsFunc notNil
    ifTrue: [ 
      (jsFunc instVarNames includes: #'functionName')
        ifFalse: [ jsFunc addInstVarName: 'functionName' ] ]