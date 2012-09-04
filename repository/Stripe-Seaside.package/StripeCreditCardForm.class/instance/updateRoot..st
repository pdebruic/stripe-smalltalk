rendering
updateRoot: htmlRoot
	super updateRoot: htmlRoot.
	htmlRoot javascript url: 'http://code.jquery.com/jquery-1.8.0.min.js'.
	htmlRoot javascript url: 'https://js.stripe.com/v1/'