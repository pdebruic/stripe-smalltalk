retrieve
retrieveWithId: anId
  | response client parsed |
  client := self httpAPIClientClass new.
  client username: self secretApiKey password: ''.
  client url: self url , '/' , anId.
  response := client get.
  parsed := StripeSystem parseStripeResponse: response.
  parsed
    at: 'error'
    ifPresent: [ :v | StripeError signal: (v at: 'message') ]
    ifAbsent: [ ^ StripeSystem convert: parsed toStripeObjectUsing: self secretApiKey ]