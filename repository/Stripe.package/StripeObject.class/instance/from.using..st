as yet unclassified
from: aResponse using: anApiKey
	apiKey := anApiKey.
	id := aResponse at: 'id' ifAbsent: [  ].
	self refreshFrom: aResponse with: anApiKey