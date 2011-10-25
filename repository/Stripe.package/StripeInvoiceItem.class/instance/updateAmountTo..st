as yet unclassified
updateAmountTo: anAmount
	|dict|
	dict:=Dictionary new.
	dict at: 'amount' put: anAmount asString.
	dict at: 'currency' put: 'usd'.
	^self updateWith: dict
	