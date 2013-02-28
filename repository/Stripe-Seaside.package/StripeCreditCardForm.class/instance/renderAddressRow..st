rendering
renderAddressRow: html
	html div
		class: 'form-row';
		with: [ 
					html label
						for: self addressOneDiv;
						with: 'Billing Street Address:'.
					html
						div: [ 
							html textInput
								name: nil;
								id: self addressOneDiv;
								size: 20 ].
					html label
						for: self addressOneDiv;
						with: 'Zip Code:'.
					html
						div: [ 
							html textInput
								name: nil;
								id: self zipDiv;
								size: 6 ] ]