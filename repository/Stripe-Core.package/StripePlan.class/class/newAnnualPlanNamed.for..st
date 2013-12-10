as yet unclassified
newAnnualPlanNamed: aPlanName for: anAmount
	| formData |
	formData := JsonObject new.
	formData at: 'id' put: self uniqueId.
	formData at: 'interval' put: 'year'.
	formData at: 'interval_count' put: '1'.
	formData at: 'name' put: aPlanName.
	formData at: 'amount' put: anAmount.
	formData at: 'currency' put: self defaultBillingCurrency.
	^ self newFrom: formData