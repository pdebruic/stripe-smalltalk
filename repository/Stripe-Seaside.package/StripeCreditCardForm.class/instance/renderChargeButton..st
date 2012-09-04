rendering
renderChargeButton: html
	html submitButton with: 'Submit Payment'.
	html script: ((html jQuery id: 'payment-form') onSubmit: self createStripeTokenForSimpleForm)