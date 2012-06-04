stripe-smalltalk
================

Smalltalk implementation of the Stripe API. 

SSL support
-----------
To interact with the Stripe servers you must connect to them using HTTPS.  The [SqueakSSLPlugin](https://code.google.com/p/squeakssl/) works in Squeak and Pharo.  But I wrote the http client behavoirs using [Zinc](http://zn.stfx.eu/zn/index.html) (Zinc uses [Zodiac](http://zdc.stfx.eu/) for ssl) which may or may not work in Squeak. If not it shouldn't be too hard to abstract out the Zinc parts and put [WebClient](http://www.squeaksource.com/WebClient.html) in its place. 

I think that on Gemstone you're options are to proxy the HTTPS client traffic through nginx or apache or to use an stunnel. Sean Allen has a description of [how to use nginx as an https client](http://www.monkeysnatchbanana.com/posts/2010/06/22/faking-a-https-client-for-glass.html)