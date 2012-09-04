as yet unclassified
renderContentOn: html
	html div
		style: 'float:left';
		with: [ 
					self renderPlainForm: html.
					self renderIFrame: html ].
	html div
		style: 'float:left';
		with: [ self renderExampleData: html ]