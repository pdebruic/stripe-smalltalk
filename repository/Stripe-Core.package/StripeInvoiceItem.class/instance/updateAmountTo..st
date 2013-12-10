as yet unclassified
updateAmountTo: anAmount
	| dict |
	dict := JsonObject new.
	dict at: 'amount' put: anAmount asString.
	dict at: 'currency' put: self class billingCurrency.
	^ self updateWith: dict