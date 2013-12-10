as yet unclassified
couponForTests
	| formData |
	formData := JsonObject new.
	formData at: 'id' put: '10_pct'.
	formData at: 'percent_off' put: '10'.
	formData at: 'duration' put: 'repeating'.
	formData at: 'duration_in_months' put: '3'.
	formData at: 'max_redemptions' put: '10'.
	formData at: 'redeem_by' put: (DateAndTime today + 60 days) asUnixTime asString.
	^ StripeCoupon newFrom: formData