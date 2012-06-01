accessing
id
	^ id ifNil: [ id := self valueFor: 'id' ]