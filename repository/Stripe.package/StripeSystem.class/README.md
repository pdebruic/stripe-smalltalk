On Pharo you can use Zodiac in conjunction with the SqueakSSLPlugin to communicate with Stripe through HTTPS.  But on Gemstone you must either proxy the HTTPS traffic through a webserver (nginx, apache) or use stunnel.

As far as how things behave between the two platforms there should be no differences.  


To receive the Stripe API WebHooks you'll need to expose a port on your server to the internet or set up a reverse proxy from your webserver to your Smalltalk image and start a ZnServer listening on that port by running:

StripeSystem startWebhookServerOn: 8182

The API docs are here: https://stripe.com/docs/api