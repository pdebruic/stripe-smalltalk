javascript
disableSubmitButton
	^ JSStream on: '$("#' , self formDiv , ' .submit").attr("disabled","disabled")'