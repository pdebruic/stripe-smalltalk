as yet unclassified
testObjectsToIds
	|ids|
	ids:=StripeSystem objectsToIds: card values.
	self assert: ids notEmpty.