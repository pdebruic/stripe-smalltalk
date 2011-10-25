as yet unclassified
testRetrieveCharge
	|charge retrievedCharge chargeId |
	charge:=StripeCharge newChargeFor: amount toCard: card.
	chargeId:=charge id.
	self assert:( charge values at:'amount' )equals:100.
	retrievedCharge:=charge retrieveFromStripe.

	self assert:(chargeId = retrievedCharge id ).

	StripeCharge instances remove: charge ifAbsent:[].
	