as yet unclassified
initializeStripeObjectDictionary
	StripeObjectDictionary := Dictionary new.
	StripeObjectDictionary at: 'charge' put: StripeCharge.
	StripeObjectDictionary at: 'customer' put: StripeCustomer.
	StripeObjectDictionary at: 'invoicetiem' put: StripeInvoiceItem.
	StripeObjectDictionary at: 'invoice' put: StripeInvoice.
	StripeObjectDictionary at: 'plan' put: StripePlan.
	StripeObjectDictionary at: 'coupon' put: StripeCoupon.
	StripeObjectDictionary at: 'card' put: StripeCard.
	StripeObjectDictionary at: 'discount' put: StripeDiscount.
	StripeObjectDictionary at: 'subscription' put: StripeSubscription.
	StripeObjectDictionary at: 'token' put: StripeToken.
	StripeObjectDictionary at: 'object' put: StripeObject.
	StripeObjectDictionary at: 'event' put: StripeEvent.
	StripeObjectDictionary at: 'transfer' put: StripeTransfer