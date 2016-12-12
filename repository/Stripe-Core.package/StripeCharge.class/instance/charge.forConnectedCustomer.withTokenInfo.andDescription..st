instance-creation
charge: anAmount forConnectedCustomer: aCustomer withTokenInfo: tokenJson andDescription: aDescription
  | dict |
  amount := anAmount asNumber.
  dict := Dictionary new.
  amount < 50
    ifTrue: [ StripeError signal: 'minimum charge is 50 cents' ].
  dict at: 'amount' put: amount asString.	"amount must be in pennies e.g. 99 equals $0.99"
  dict at: 'source' put: (tokenJson at: 'id').
  dict at: 'application_fee' put: (amount // 100) asString.
  dict at: 'description' put: (description := aDescription).
  dict at: 'currency' put: self class billingCurrency.
  self connectCreateWith: dict for: aCustomer