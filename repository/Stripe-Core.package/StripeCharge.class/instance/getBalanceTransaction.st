fees
getBalanceTransaction
	balanceTransaction := StripeBalanceTransaction
		newWith:
			(JsonObject new
				at: 'id' put: self balanceTransactionId;
				yourself)