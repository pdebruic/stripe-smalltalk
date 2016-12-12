as yet unclassified
amountAsMoney
  "Stripe stores everything in cents.  "

  ^ ConvertableMoney amount: amount / 100 currencyCode: 'USD'