as yet unclassified
initialize 
"
StripeCreditCardForm initialize
"
| app |
	app := WAAdmin register: self asApplicationAt: 'stripe'.
	(app filters detect: #isExceptionFilter) configuration at: #exceptionHandler put: WADebugErrorHandler.

	