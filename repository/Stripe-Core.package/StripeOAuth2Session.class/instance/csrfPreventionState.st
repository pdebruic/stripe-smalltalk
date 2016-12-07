as yet unclassified
csrfPreventionState
	^ csrfPreventionState
		ifNil: [ csrfPreventionState := String
				streamContents: [ :targetStream | 
					| rand |
					rand := Random new.
					20
						timesRepeat: [ targetStream
								nextPut: ('0123456789ABCDEFGHIJKLMNOPQRSTUVWXZYabcdefghijklmnopqrstuvwxyz' at: (rand nextInt: 62)) ] ] ]