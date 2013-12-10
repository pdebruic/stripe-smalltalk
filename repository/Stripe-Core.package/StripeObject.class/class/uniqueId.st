retrieve
uniqueId
	^ String
		streamContents: [ :targetStream | 10 timesRepeat: [ targetStream nextPut: '0123456789ABCDEFGHIJKLMNOPQRSTUVWXZYabcdefghijklmnopqrstuvwxyz' atRandom ] ]