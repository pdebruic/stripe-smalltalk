as yet unclassified
handleAuthenticationCallback: aParameterDictionary
  | code tokenRequest tokenResponse json |
  code := aParameterDictionary at: 'code' ifAbsent: [ ^ nil ].	"(aParameterDictionary at: 'state' ifAbsent: [ ^ nil ]) = csrfPreventionState
    ifFalse: [ Error signal: 'Stripe CSRF prevention state parameter mismatch' ]."
  tokenRequest := (ZnRequest
    post: (ZnUrl fromString: 'http://stripeOauth:8883/oauth/token'))
    entity:
      (ZnApplicationFormUrlEncodedEntity new
        at: 'code' put: code;
        at: 'client_secret' put: self consumerData secret;
        at: 'grant_type' put: 'authorization_code';
        yourself).
  tokenResponse := ZnClient new
    request: tokenRequest;
    post.
  json := Json readFrom: tokenResponse readStream.
  [ 
  json
    at: 'error'
    ifPresent: [ :errorCode | Error signal: errorCode , ' ' , (json at: 'error_description') ]
    ifAbsent: [ 
      accessToken := json at: 'access_token'.
      refreshToken := json at: 'refresh_token'.
      stripeUserId := json at: 'stripe_user_id'.
      liveMode := json at: 'livemode'.
      scope := json at: 'token'.
      userPublishableKey := json at: 'stripe_publishable_key' ] ]
    ensure: [ csrfPreventionState := nil ]