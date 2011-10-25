urls
url
	|className|
	className:=self name.
	^ self stripeBaseUrl ,'/', (className copyFrom: 7 to: className size) asLowercase , 's'