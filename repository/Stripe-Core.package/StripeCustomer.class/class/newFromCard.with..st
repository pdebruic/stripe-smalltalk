instance creation
newFromCard: aCard with: optionalDictionary
	"You probably don't want to use this unless you want to deal with PCI/DSS compliance on your server.  Get a toke first"

	^ self new createFromCard: aCard with: optionalDictionary