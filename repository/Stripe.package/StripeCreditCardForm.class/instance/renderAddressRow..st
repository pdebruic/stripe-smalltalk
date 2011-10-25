rendering
renderAddressRow: html
	html div
		class: 'form-row';
		with: [ 
					html label
						for: self addressOneDiv;
						with: 'Street Address:'.
					html break.
					html textInput
						name: nil;
						id: self addressOneDiv;
						size: 20.
					html break.
					html label
						for: self addressOneDiv;
						with: 'Zip Code:'.
					html break.
					html textInput
						name: nil;
						id: self zipDiv;
						size: 6 ]