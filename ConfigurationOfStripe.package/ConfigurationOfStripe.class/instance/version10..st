versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec description: 'initial version'.
			spec author: 'PaulDeBruicker'.
			spec postLoadDoIt: #initializeEnvironment.
			spec timestamp: '10/25/2011 17:36'.
			spec
				project: 'Zinc-Zodiac' with: #stable;
				project: 'Seaside30' with: #stable.
			spec package: 'Stripe' with: 'Stripe-PaulDeBruicker.8' ]