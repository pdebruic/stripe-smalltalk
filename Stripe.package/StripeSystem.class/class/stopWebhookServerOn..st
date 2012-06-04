webhooks
stopWebhookServerOn: aPortNumber
	ZnServer defaultServerClass allInstances
		do: [ :eachService | 
			eachService port = aPortNumber
				ifTrue: [ eachService stop ] ]