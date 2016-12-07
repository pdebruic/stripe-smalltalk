instance creation
newChargeFor: amountToCharge connectedCustomer: aCustomer  withToken: tokenJson with: aDescription
	^ self new charge: amountToCharge forConnectedCustomer: aCustomer withTokenInfo: tokenJson andDescription: aDescription