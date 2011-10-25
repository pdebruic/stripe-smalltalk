rendering
renderStripeResponseHandler:  html
	
	
	html script: ((JSStream on: self stripeResponseHandler) asFunction: #('status' 'response') named: self responseHandlerFunctionName  )