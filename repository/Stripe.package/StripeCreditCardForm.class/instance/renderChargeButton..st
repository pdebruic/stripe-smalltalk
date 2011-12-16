rendering
renderChargeButton: html
	html submitButton
		onClick:
				(html jQuery
						script: [ :s | 
							s << self createStripeTokenForSimpleForm.
							s << (JSStream on: 'createStripeToken()') ]);
		with: 'Submit Payment'