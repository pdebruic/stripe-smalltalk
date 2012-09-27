strip configuration
billingCurrency: currencyName
	"
	self billingCurrency: 'usd'.
	self billingCurrency: 'cad'.
	self billingCurrency: nil.
	"
	BillingCurrency := currencyName