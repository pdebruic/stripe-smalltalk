javascript
createToken
	^(JSStream on: 'Stripe.createToken(' , self createTokenData  , ', amount , ' , self responseHandlerFunctionName , ')').