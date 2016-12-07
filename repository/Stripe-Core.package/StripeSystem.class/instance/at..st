as yet unclassified
at: aClass
	^ self root at: aClass name ifAbsentPut: [aClass storageClass new ]