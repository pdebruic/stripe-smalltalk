as yet unclassified
initializeStripeObjectDictionary
	StripeObjectDictionary := Dictionary new.
	StripeObject withAllSubclasses do: [ :each | StripeObjectDictionary at: each object put: each ]