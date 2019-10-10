baselines
baselinePharo: spec
	spec
		for: #pharo
		do: [ spec
				baseline: 'Seaside3' with: [ spec loads: #('Zinc') ];
				baseline: 'ZincHTTPComponents'
					with: [ spec
						loads: #('Core' 'SSO');
						repository: 'github://svenvc/zinc/repository' ].
			spec
				package: 'Stripe-Core'
				with: [ spec requires: #('ZincHTTPComponents') ].
			spec
				package: 'Zodiac-Core'
				with: [ spec repository: 'http://mc.stfx.eu/Zodiac' ].
			spec
				package: 'Stripe-HTTPAPIClient-Zinc'
				with: [ spec requires: #('Stripe-Core' 'HTTP-API-Client') ].
			spec
				package: 'StripePharoExample'
				with: [ spec requires: #('Stripe-Seaside'  'Seaside3' 'Core') ].
			spec group: 'Seaside-Example' with: #('StripePharoExample').
			spec
				group: 'Core' with: #('Stripe-HTTPAPIClient-Zinc');
				group: 'Stripe-Zodiac' with: #('Zodiac-Core' 'Core' 'SqueakSSL') ]