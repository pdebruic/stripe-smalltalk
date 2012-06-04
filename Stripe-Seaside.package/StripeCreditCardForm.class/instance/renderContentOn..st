rendering
renderContentOn: html
	html script: self setPublishableKey.
	self renderForm: html.
	self renderStripeResponseHandler: html