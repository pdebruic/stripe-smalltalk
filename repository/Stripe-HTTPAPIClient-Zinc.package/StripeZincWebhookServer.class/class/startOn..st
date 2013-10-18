as yet unclassified
startOn: aPortNumber
	default := ZnServer startOn: aPortNumber.
	self default register.
	self default delegate: StripeSystem