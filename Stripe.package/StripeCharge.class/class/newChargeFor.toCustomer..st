instance creation
newChargeFor: anAmount toCustomer: aCustomer
	^ self new charge: anAmount asString toCustomer: aCustomer with: ''