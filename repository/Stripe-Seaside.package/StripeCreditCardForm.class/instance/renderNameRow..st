rendering
renderNameRow: html
	html div
		class: 'form-row';
		with: [ 
					html label
						for: self nameDiv;
						with: 'Name On Card:'.
					html break.
					html textInput
						name: nil;
						id: self nameDiv;
						size: 20;
						noAutocomplete ]