instance creation
newChargeFor: anAmount toCard: aCard
	^ self new charge: anAmount to: aCard with: ''