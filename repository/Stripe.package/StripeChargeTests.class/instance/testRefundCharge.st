as yet unclassified
testRefundCharge
	|charge refundedCharge |
	charge:=StripeCharge newChargeFor: amount toCard: card.
	self assert:( charge values at:'amount' )equals:100.
	refundedCharge:=charge refund: 51.
	self assert:(refundedCharge values at: 'amount_refunded') equals:51.
	self assert:(charge id = refundedCharge id ).
	
	StripeCharge instances remove: charge ifAbsent:[].
	