webhooks
handleRequest: aRequest
	| jsonData |
	"should only be a POST from stripe"
	aRequest method == #POST
		ifTrue: [ 
			jsonData :=  Json readFrom: aRequest entity.
			(jsonData at: 'object') = 'event'
				ifTrue: [ 
					StripeEvent newWithEventDetailsFromStripeFor: (jsonData at: 'id').
					^ ZnResponse ok: nil ].
			^ ZnResponse serverError: nil ].
	^ ZnResponse badRequest: nil