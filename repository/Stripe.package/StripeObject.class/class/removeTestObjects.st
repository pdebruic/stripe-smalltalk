storing
removeTestObjects
	self instances removeAllSuchThat:[:each | (each values at: 'livemode') = false]