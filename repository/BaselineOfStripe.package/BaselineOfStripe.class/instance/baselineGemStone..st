baselines
baselineGemStone: spec
	spec
		for: #gemstone
		do: [ spec
				package: 'StripeGemstoneExample'
				with: [ spec requires: #('Stripe-Seaside' 'Seaside3' 'Stripe-HTTPAPIClient-Zinc') ].
			spec group: 'Seaside-Example' with: #('StripeGemstoneExample') ]