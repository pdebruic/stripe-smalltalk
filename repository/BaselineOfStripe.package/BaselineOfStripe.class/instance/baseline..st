baselines
baseline: spec
	"going to add stuff for squeak into this version"

	<baseline >
	spec
		for: #common
		do: [ 
			spec postLoadDoIt: #startStripeExample.
			spec
				baseline: 'Seaside3'
					with: [ spec
						
						loads: #('Base' 'JQuery-UI');
						
						repository: 'github://SeasideSt/Seaside:master/repository'];
				project: 'HTTP-API-Client'
					with: [ spec
						className: 'ConfigurationOfHTTPAPIClient';
						loads: 'Core';
						versionString: #stable;
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
				package: 'Stripe-Money' with: [ spec requires: #('Core' 'Money') ];
				package: 'Stripe-Seaside' with: [ spec requires: #('Seaside3' 'Core') ].
			spec
				group: 'default' with: #('Core');
				group: 'Tests' with: #('Core' 'Stripe-Tests');
				group: 'Dev' with: #('Stripe-Tests' 'Stripe-Seaside') ].
	spec
		for: #squeakCommon
		do: [ spec
				package: 'SqueakSSL'
				with: [ spec repository: 'http://www.squeaksource.com/SqueakSSL' ] ].
	spec
		for: #squeak
		do: [ spec
				project: 'Seaside3'
				with: [ spec loads: #('Core' 'JSON' 'Email' 'Javascript' 'JQuery' 'WebClient') ].
			spec
				package: 'Stripe-HTTPAPIClient-WebClient'
				with: [ spec requires: #('Stripe-Core' 'HTTP-API-Client' 'SqueakSSL') ].
			spec package: 'StripeSqueakExample' with: [ spec requires: #('Stripe-Seaside') ].
			spec group: 'Seaside-Example' with: #('StripeSqueakExample').
			spec group: 'Core' with: #('Stripe-HTTPAPIClient-WebClient') ].
	spec
		for: #pharo
		do: [ spec
				project: 'Seaside3'
					with: [ spec loads: #('Core' 'JSON' 'Email' 'Javascript' 'JQuery' 'Zinc') ];
				project: 'ZincHTTPComponents'
					with: [ spec
						className: 'ConfigurationOfZincHTTPComponents';
						versionString: #stable;
						loads: #('Core' 'SSO');
						repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].
			spec package: 'Stripe-Core' with: [ spec requires: #('ZincHTTPComponents') ].
			spec package: 'Zodiac-Core' with: [ spec repository: 'http://mc.stfx.eu/Zodiac' ].
			spec
				package: 'Stripe-HTTPAPIClient-Zinc'
				with: [ spec requires: #('Stripe-Core' 'HTTP-API-Client') ].
			spec package: 'StripePharoExample' with: [ spec requires: #('Stripe-Seaside') ].
			spec group: 'Seaside-Example' with: #('StripePharoExample').
			spec
				group: 'Core' with: #('Stripe-HTTPAPIClient-Zinc');
				group: 'Stripe-Zodiac' with: #('Zodiac-Core' 'Core' 'SqueakSSL') ].
	spec
		for: #gemstone
		do: [ spec
				project: 'Seaside3'
					with: [ spec loads: #('Core' 'JSON' 'Email' 'Javascript' 'JQuery' 'Zinc') ];
				project: 'ZincHTTPComponents'
					with: [ spec
						className: 'ConfigurationOfZincHTTPComponents';
						versionString: #stable;
						loads: #('SSO');
						repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].
			spec package: 'Stripe-Core' with: [ spec requires: #('ZincHTTPComponents') ].
			spec
				package: 'Stripe-HTTPAPIClient-Zinc'
				with: [ spec requires: #('Stripe-Core' 'HTTP-API-Client') ].
			spec package: 'StripeGemstoneExample' with: [ spec requires: #('Stripe-Seaside') ].
			spec group: 'Seaside-Example' with: #('StripeGemstoneExample').
			spec group: 'Core' with: #('Stripe-HTTPAPIClient-Zinc') ]