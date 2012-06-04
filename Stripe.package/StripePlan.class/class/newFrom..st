as yet unclassified
newFrom: aDictionary
	"see https://stripe.com/docs/api?lang=curl#create_plan 

you can't create more than one of the same plan, so we check to see if the one you want to make exists and if not create it"

	| existingPlan |
	existingPlan := self retrieveWithId: (aDictionary at: 'id').
	^ existingPlan isNil
		ifTrue: [ self new createWith: aDictionary ]
		ifFalse: [ existingPlan ]