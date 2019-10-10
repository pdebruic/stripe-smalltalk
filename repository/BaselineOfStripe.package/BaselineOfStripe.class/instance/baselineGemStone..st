baselines
baselineGemStone: spec
	spec
		for: #gemstone
		do: [ spec
				baseline: 'Seaside3' with: [ spec loads: #('Zinc') ];
				baseline: 'ZincHTTPComponents'
					with: [ spec
						loads: #('Core' 'SSO');
						repository: 'github://GsDevKit/zinc:gs_master/repository' ].
			spec
				package: 'Stripe-Core'
				with: [ spec requires: #('ZincHTTPComponents') ].
			spec
				package: 'Stripe-HTTPAPIClient-Zinc'
				with: [ spec requires: #('Stripe-Core' 'HTTP-API-Client') ].
			spec
				package: 'StripeGemstoneExample'
				with: [ spec requires: #('Stripe-Seaside' 'Seaside3' 'Core') ].
			spec group: 'Seaside-Example' with: #('StripeGemstoneExample').
			spec group: 'Core' with: #('Stripe-HTTPAPIClient-Zinc') ]