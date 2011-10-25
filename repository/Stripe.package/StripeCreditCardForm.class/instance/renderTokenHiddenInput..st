rendering
renderTokenHiddenInput: html
	html hiddenInput id:self tokenDiv ; callback:[:val | val=''  ifFalse:[self chargeCustomerFor: val]]