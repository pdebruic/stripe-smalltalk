storing
removeTestObjectsFromStripe
	|objs|
	objs:= self retrieveLast: 100 starting:0.
	objs do:[:each | each deleteFromStripe ].