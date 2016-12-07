as yet unclassified
handleAuthenticationCallback: aParameterDictionary
	| code tokenRequest tokenResponse |
	code := aParameterDictionary at: 'code' ifAbsent: [ ^ nil ].
	(aParameterDictionary at: 'state' ifAbsent: [ ^ nil ]) = csrfPreventionState
		ifFalse: [ Error signal: 'Stripe CSRF prevention state parameter mismatch' ].
	tokenRequest := (ZnRequest
		post: (ZnUrl fromString: 'https://connect.stripe.com/oauth/token'))
		entity:
			(ZnApplicationFormUrlEncodedEntity new
				at: 'code' put: code;
				at: 'client_secret' put: self consumerData secret;
				at: 'redirect_uri' put: self redirectUrl;
				at: 'grant_type' put: 'authorization_code';
				yourself);
		yourself.
	tokenResponse := ZnClient new
		request: tokenRequest;
		post.
	[ tokenResponse
		at: 'error'
		ifPresent: [ :errorCode | Error signal: errorCode , ' ' , (tokenResponse at: 'error_description') ]
		ifAbsent: [ accessToken := tokenResponse at: 'access_token'.
			refreshToken := tokenResponse at: 'refresh_token'.
			stripeUserId := tokenResponse at: 'stripe_user_id'.
			liveMode := tokenResponse at: 'livemode'.
			scope := tokenResponse at: 'token'.
			userPublishableKey at: 'stripe_publishable_key' ] ]
		ensure: [ csrfPreventionState := nil ]