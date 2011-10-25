rendering
renderContentOn: html
	html script: self setPublishableKey.
	html form
		method: 'post';
		id: self formDiv ;
		with: [ 		self renderValidationErrorOn: html.
					self renderCardNumberRow: html.
					self renderCVCRow: html.
					self renderExpirationRow: html.
					self renderAddressRow: html.
					self renderTokenHiddenInput:html.
					html submitButton
						onClick: (html jQuery script: [:s | s<<(self createStripeTokenForSimpleForm).
														s<< (JSStream on: 'createStripeToken()')]);
						with: 'Submit Payment' ].
	self renderStripeResponseHandler:html