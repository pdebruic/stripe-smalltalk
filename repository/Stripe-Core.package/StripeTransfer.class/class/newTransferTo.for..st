as yet unclassified
newTransferTo: aRecipient for: anAmount
	| formData |
	formData := JsonObject new.
	formData at: 'currency' put: self defaultBillingCurrency.
	formData at: 'amount' put: anAmount.
	formData at: 'recipient' put: aRecipient id.
	^ self new createWith: formData