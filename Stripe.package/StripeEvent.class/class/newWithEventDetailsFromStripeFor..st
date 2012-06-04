as yet unclassified
newWithEventDetailsFromStripeFor: anEventId
	| newEvent |
	newEvent := self new
		id: anEventId;
		retrieveFromStripe.
	self instances add: newEvent.
	^ newEvent