fees
applicationFee
	|feeObj |
	feeObj:=(self balanceTransaction valueFor: 'fee_details') detect:[:ea | (ea valueFor: 'type' )= 'application_fee' ] ifNone:[nil].
	feeObj notNil ifTrue:[^feeObj at: 'amount'].
	^nil