baselines
baseline11: spec
	<version: '1.1-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'http://www.squeaksource.com/Stripe'.
			spec
				project: 'Seaside30'
					with: [ 
							spec
								className: 'ConfigurationOfSeaside30';
								versionString: #stable;
								repository: 'http://www.squeaksource.com/MetacelloRepository' ];
				project: 'ZincHTTPComponents'
					with: [ 
							spec
								className: 'ConfigurationOfZincHTTPComponents';
								versionString: #stable;
								repository: 'http://www.squeaksource.com/ZincHTTPComponents' ].
			spec
				package: 'Stripe-Tests' with: [ spec requires: #('Stripe') ];
				package: 'Stripe-Seaside' with: [ spec requires: #('Seaside30' 'Stripe') ].
			spec
				group: 'default' with: #('Core');
				group: 'Core' with: #('Stripe');
				group: 'Tests' with: #('Stripe-Tests');
				group: 'Seaside-Example' with: #('Stripe-Seaside');
				group: 'Dev' with: #('Stripe-Tests' 'Stripe-Seaside') ].
	spec
		for: #squeakCommon
		do: [ 
			spec
				package: 'JSON' with: [ spec repository: 'http://www.squeaksource.com/JSON' ].
			spec
				package: 'Stripe' with: [ spec requires: #('ZincHTTPComponents' 'JSON') ] ].
	spec
		for: #pharo
		do: [ 
			spec package: 'Zodiac-Core' with: [ spec repository: 'http://www.squeaksource.com/Zodiac' ].
			spec group: 'Stripe-Zodiac' with: #('Zodiac-Core' 'Stripe') ]