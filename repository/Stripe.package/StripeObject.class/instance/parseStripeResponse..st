as yet unclassified
parseStripeResponse: aResponse
	^ JSJsonParser parse: aResponse asString readStream