baselines
baseline10: spec
	<version: '1.0-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'http://www.squeaksource.com/Stripe'.
			spec
				project: 'Zinc-Zodiac'
					with: [ 
							spec
								className: 'ConfigurationOfZincHTTPComponents';
								versionString: #stable;
								loads: #('Zinc-Zodiac');
								repository: 'http://www.squeaksource.com/ZincHTTPComponents' ];
				project: 'Seaside30'
					with: [ 
							spec
								className: 'ConfigurationOfSeaside30';
								versionString: #stable;
								repository: 'http://www.squeaksource.com/MetacelloRepository' ];
				package: 'Stripe' with: [ spec requires: #('Seaside30' 'Zinc-Zodiac') ].
			spec
				group: 'default' with: #('Core');
				group: 'Core' with: #('Stripe') ]