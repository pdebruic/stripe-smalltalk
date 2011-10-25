javascript
addTokenToForm

	^     'var pmtForm = $("#payment-form");
        var token = response["id"];
        $("#' , self tokenDiv ,'").val(token);
        pmtForm.get(0).submit();}'