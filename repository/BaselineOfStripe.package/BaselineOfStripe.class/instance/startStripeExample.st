baselines
startStripeExample
	| stripeExampleClass |
	stripeExampleClass := Smalltalk at: #StripeExample ifAbsent: [ nil ].
	stripeExampleClass
		ifNotNil: [ :cls | stripeExampleClass createFunctionNameInJSFunction ]