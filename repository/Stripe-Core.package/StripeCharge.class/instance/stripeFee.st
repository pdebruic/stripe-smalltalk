fees
stripeFee
	|feeObj |
	feeObj:=(self balanceTransaction valueFor: 'fee_details') detect:[:ea | (ea valueFor: 'type' )= 'stripe_fee' ] ifNone:[nil].
	feeObj notNil ifTrue:[^feeObj at: 'amount'].
	^nil