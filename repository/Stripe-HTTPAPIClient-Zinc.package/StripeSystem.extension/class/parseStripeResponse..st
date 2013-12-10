*stripe-httpapiclient-zinc
parseStripeResponse: aResponse
	^ Json readFrom: aResponse readStream