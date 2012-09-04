as yet unclassified
renderIFrame: html
	html heading
		level2;
		with: 'Form Inside iFrame'.
	html
		paragraph: [ 
			html
				render:
					'If you put the form in an iFrame it limits the Stripe JS file''s ability to steal info from the rest of your app. See: '.
			html anchor
				url: 'http://paymentiframe.com/';
				with: 'http://paymentiframe.com/' ].
	html iframe
		url: '/stripe-form';
		height: 500;
		width: 300