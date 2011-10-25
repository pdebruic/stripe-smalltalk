subscriptions
updateSubscriptionToPlanNamed: aName

	|dict|
	dict:=Dictionary new.
	dict at:'plan' put: aName.
	self updateSubscriptionTo:dict 