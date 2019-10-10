baselines
baselineSqueak: spec
	spec
		for: #squeak
		do: [ spec baseline: 'Seaside3' with: [ spec loads: #('WebClient') ].
			spec
				package: 'Stripe-HTTPAPIClient-WebClient'
				with: [ spec requires: #('Stripe-Core' 'HTTP-API-Client' 'SqueakSSL') ].
			spec
				package: 'StripeSqueakExample'
				with: [ spec requires: #('Stripe-Seaside'  'Seaside3' 'Core') ].
			spec group: 'Seaside-Example' with: #('StripeSqueakExample').
			spec group: 'Core' with: #('Stripe-HTTPAPIClient-WebClient') ]