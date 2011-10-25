javascript
createStripeTokenForSimpleForm
	^((self disableSubmitButton , self setAmount , self createToken , self stopReturn) asFunction: #('event') named: 'createStripeToken')