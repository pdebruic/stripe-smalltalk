baselines
baselineZinc: spec
	spec
		for: #pharo
		do: [ spec
				baseline: 'ZincHTTPComponents'
				with: [ spec
						loads: #('Core' 'SSO');
						repository: 'github://svenvc/zinc/repository' ].
			spec
				package: 'Zodiac-Core'
				with: [ spec repository: 'http://mc.stfx.eu/Zodiac' ].
			spec
				group: 'Stripe-Zodiac'
				with: #('Zodiac-Core' 'Core' 'SqueakSSL') ].
	spec
		for: #gemstone
		do: [ spec
				baseline: 'ZincHTTPComponents'
				with: [ spec
						loads: #('Core' 'SSO');
						repository: 'github://GsDevKit/zinc:gs_master/repository' ].
			spec
				package: 'Zodiac-Core'
				with: [ spec repository: 'github://GsDevKit/zodiac:gs_master/repository' ] ].
	spec
		for: #(#pharo #gemstone)
		do: [ spec
				baseline: 'Seaside3'
				with: [ spec
						loads: #('Core' 'JSON' 'Email' 'Javascript' 'JQuery' 'JQueryUI' 'Zinc') ].
			spec
				package: 'Stripe-Core'
				with: [ spec requires: #('ZincHTTPComponents') ].
			spec
				package: 'Stripe-HTTPAPIClient-Zinc'
				with: [ spec requires: #('Stripe-Core' 'HTTPAPIClient') ].
			spec group: 'StripeClient' with: #('Stripe-HTTPAPIClient-Zinc') ]