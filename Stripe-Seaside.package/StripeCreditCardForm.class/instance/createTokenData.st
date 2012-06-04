javascript
createTokenData
	^ '{name : $("#' , self nameDiv , '").val(), number : $("#' , self cardNumberDiv , '").val(),cvc : $("#' , self cvcDiv
		, '").val() , exp_month : $("#' , self monthDiv , '").val(), exp_year : $("#' , self yearDiv
		, '").val(), address_line1 : $("#' , self addressOneDiv , '").val(), address_zip : $("#' , self zipDiv , '").val()}'