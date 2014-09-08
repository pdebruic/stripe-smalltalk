*stripe-httpapiclient-zinc
handleRequest: aRequest
  | jsonData |
  "should only be a POST from stripe"
  aRequest method == #'POST'
    ifTrue: [ 
      jsonData := Json readFrom: aRequest entity readStream.
      (jsonData at: 'object') = 'event'
        ifTrue: [ 
          StripeEvent newWithEventDetailsFromStripeFor: (jsonData at: 'id').
          ^ ZnResponse ok: (ZnEntity text: 'OK') ].
      ^ ZnResponse serverError: 'no event' ].
  ^ ZnResponse badRequest: aRequest