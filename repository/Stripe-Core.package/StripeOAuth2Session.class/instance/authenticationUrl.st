as yet unclassified
authenticationUrl
|url|
	self ensureStoredForLookup.
	url:= (ZnUrl fromString: 'https://connect.stripe.com/oauth/authorize')
		queryAt: 'client_id' put: self consumerData key;
		queryAt: 'response_type' put: 'code';
		queryAt: 'scope' put: 'read_write';
		queryAt: 'state' put: self csrfPreventionState;
		yourself.
	"	self customer addOauthAddressQueriesTo: url."
		^url