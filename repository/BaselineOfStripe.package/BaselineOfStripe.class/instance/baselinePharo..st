baselines
baselinePharo: spec
	spec
		for: #pharo
		do: [ spec
				package: 'StripePharoExample'
				with: [ spec requires: #('Stripe-Seaside' 'Seaside3' 'Stripe-HTTPAPIClient-Zinc') ].
			spec group: 'Seaside-Example' with: #('StripePharoExample') ]