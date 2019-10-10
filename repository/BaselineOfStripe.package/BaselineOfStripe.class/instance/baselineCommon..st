baselines
baselineCommon: spec
	spec
		for: #common
		do: [ spec postLoadDoIt: #startStripeExample.
			spec
				baseline: 'Seaside3'
					with: [ spec
						loads: #('Core' 'JSON' 'Email' 'Javascript' 'JQuery' 'JQueryUI' 'Email');
						repository: 'github://SeasideSt/Seaside:master/repository' ];
				baseline: 'HTTP-API-Client'
					with: [ spec
						className: 'BaselineOfHTTPAPIClient';
						loads: 'Core';
						repository: 'http://smalltalkhub.com/mc/pdebruic/HTTPAPIClient/main' ];
				project: 'Money'
					with: [ spec
						className: 'ConfigurationOfMoney';
						loads: #('Core');
						file: 'ConfigurationOfMoney';
						versionString: #stable;
						repository: 'http://www.smalltalkhub.com/mc/pdebruic/Money/main' ];
				project: 'JSON'
					with: [ spec
						className: 'ConfigurationOfJSON';
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/JSON/main' ].
			spec
				package: 'Stripe-Core' with: [ spec requires: #('JSON') ];
				package: 'Stripe-Tests' with: [ spec requires: #('Core') ];
				package: 'Stripe-money'
					with: [ spec requires: #('Core' 'Money') ];
				package: 'Stripe-Seaside'
					with: [ spec requires: #('Seaside3' 'Core') ].
			spec
				group: 'default' with: #('Core');
				group: 'Tests' with: #('Core' 'Stripe-Tests');
				group: 'Dev' with: #('Stripe-Tests' 'Stripe-Seaside') ].
	spec
		for: #squeakCommon
		do: [ spec
				package: 'SqueakSSL'
				with: [ spec repository: 'http://www.squeaksource.com/SqueakSSL' ] ]