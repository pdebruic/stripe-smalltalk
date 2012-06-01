as yet unclassified
newFrom: aDictionary
	"see https://stripe.com/docs/api?lang=curl#create_coupon 

you can't create more than one of the same coupon, so we check to see if the one you want to make exists and if not create it"

	| existingCoupon |
	existingCoupon := self retrieveWithId: (aDictionary at: 'id').
	^ existingCoupon isNil
		ifTrue: [ self new createWith: aDictionary ]
		ifFalse: [ existingCoupon ]