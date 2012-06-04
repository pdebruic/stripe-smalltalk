versions
version11: spec
	<version: '1.1' imports: #('1.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'includes WebHooks'.
		spec author: 'PaulDeBruicker'.
		spec timestamp: '6/1/2012 17:46'.
		spec 
			project: 'Seaside30' with: #'stable';
			project: 'ZincHTTPComponents' with: #'stable'.
		spec 
			package: 'Stripe' with: 'Stripe-PaulDeBruicker.13';
			package: 'Stripe-Tests' with: 'Stripe-Tests-PaulDeBruicker.1';
			package: 'Stripe-Seaside' with: 'Stripe-Seaside-PaulDeBruicker.3'. ].

	spec for: #'squeakCommon' do: [
		spec package: 'JSON' with: 'JSON-ul.35'. ].

	spec for: #'pharo' do: [
		spec package: 'Zodiac-Core' with: 'Zodiac-Core-SvenVanCaekenberghe.17'. ].
