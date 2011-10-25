javascript
errorNotification
	^' 
	if (response.error) {
	$("#payment-form .submit").removeAttr("disabled");
	if ((response.param == "exp_year")||(response.param == "exp_month")) {
	 $("#', self errorDiv , '").html("The expiration date is incorrect");
	} else {
        $("#', self errorDiv , '").html(response.error.message);
	}
    } else {'