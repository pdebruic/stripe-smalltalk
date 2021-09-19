baselines
baselineCommon: spec
	spec
		for: #common
		do: [ spec postLoadDoIt: #startStripeExample.
			spec
				baseline: 'Seaside3'
				with: [ spec repository: 'github://SeasideSt/Seaside:master/repository' ].
			spec
				baseline: 'HTTPAPIClient'
				with:
					[ spec repository: 'github://pdebruic/HTTPAPIClient:main/repository' ].
			spec
				baseline: 'Money'
				with: [ spec repository: 'github://pdebruic/Money:main/repository' ].
			spec
				baseline: 'JSON'
				with: [ spec repository: 'github://pdebruic/JSON:main/repository' ].
			spec
				package: 'Stripe-Core' with: [ spec requires: #('JSON') ];
				package: 'Stripe-Tests'
					with: [ spec requires: #('StripeClient') ];
				package: 'Stripe-money'
					with: [ spec requires: #('StripeClient' 'Money') ];
				package: 'Stripe-Seaside'
					with: [ spec requires: #('Seaside3' 'StripeClient') ].
			spec
				group: 'default' with: #('Core');
				group: 'Tests' with: #('StripeClient' 'Stripe-Tests');
				group: 'Dev' with: #('Tests' 'Seaside-Example');
				group: 'Core' with: #('StripeClient') ].
	spec
		for: #squeakCommon
		do: [ spec
				package: 'SqueakSSL'
				with: [ spec repository: 'http://www.squeaksource.com/SqueakSSL' ] ]