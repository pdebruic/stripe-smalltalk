as yet unclassified
lookupFromRequest: aRequest
	|state found|
	state:=aRequest queryFields at:'state' ifAbsent:[^nil].
	found:=self instances at: state ifAbsent:[^nil].
	self instances removeKey: state. "the csrf prevention state should only be used once...."
	^found