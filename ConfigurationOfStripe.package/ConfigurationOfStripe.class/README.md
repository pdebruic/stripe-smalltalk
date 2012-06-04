On Pharo you can use Zodiac in conjunction with the SqueakSSLPlugin to communicate with Stripe through HTTPS.  But on Gemstone you must either proxy the HTTPS traffic through a webserver (nginx, apache) or use stunnel.

As far as how things behave between the two platforms there should be no differences.  


You'll also need a port opened for your server to receive the Stripe API WebHooks if you want them.  

