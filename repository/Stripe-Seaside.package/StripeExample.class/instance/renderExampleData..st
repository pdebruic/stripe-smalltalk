as yet unclassified
renderExampleData: html
	html heading
		level3;
		with: 'Valid Test Data'.
	html
		definitionList: [ 
			html
				definitionTerm: 'Card Number';
				definitionData: '4242 4242 4242 4242'.
			html
				definitionTerm: 'CVV';
				definitionData: '123'.
			html
				definitionTerm: 'Expiration Month';
				definitionData: Date today month index greaseString.
			html
				definitionTerm: 'Expriation Year';
				definitionData: (Date today year + 1) greaseString ]