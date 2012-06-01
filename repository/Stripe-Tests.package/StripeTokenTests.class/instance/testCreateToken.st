as yet unclassified
testCreateToken
	| token |
	token := StripeToken newFrom: card for: '200'.
	self assert: token className equals: 'StripeToken'