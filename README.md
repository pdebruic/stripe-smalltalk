#stripe-smalltalk


Smalltalk implementation of the Stripe API. You need a free account from [Stripe](http://www.stripe.com) to get the API keys. Their API docs are very thorough and located [here](https://stripe.com/docs/api). I think you can access all aspects of their API from this package.  Let me know if you find something that's not included and we can work to get it sorted out. 

**This code is in now way endorsed, supported, or verified by Stripe. I think they're ok with it and they know about it but its definitely unofficial.**


###SSL support

To interact with the Stripe servers you must connect to them using HTTPS.  The [SqueakSSLPlugin](https://code.google.com/p/squeakssl/) works in Squeak and Pharo.  But I wrote the http client behavoirs using [Zinc](http://zn.stfx.eu/zn/index.html) (Zinc uses [Zodiac](http://zdc.stfx.eu/) for ssl) which may or may not work in Squeak. If not it shouldn't be too hard to abstract out the Zinc parts and put [WebClient](http://www.squeaksource.com/WebClient.html) in its place. 

I think that on Gemstone your options are to proxy the HTTPS client traffic through nginx or apache or to use an stunnel. Sean Allen has a description of [how to use nginx as an https client](http://www.monkeysnatchbanana.com/posts/2010/06/22/faking-a-https-client-for-glass.html).  The Zinc port for Gemstone that I started and Dale Henrichs has been improving is [here](https://github.com/glassdb/zinc) and should work fine.

###Supported Smalltalks

So far its only been tested and known to work on Pharo 1.3.  I plan to test on Squeak, Gemstone 2.4, and Pharo 1.4 but haven't yet.  I don't think there is anything preventing it from working right now on those untested platforms I just haven't loaded it up and tried yet

###WebHooks
You can receive Stripe WebHooks if you start the server mentioned in the class side of StripeSystem and create a way for the Stripe servers to reach your image.  See the class comment for StripeSystem for ideas.   The events will be stored in the image as instances of StripeEvent for you to use or log to a file or database for other purposes.  I'm using the [Toothpick](http://www.metaprog.com/Toothpick/index.html) logging framework to put them in Riak.  


##Installation using SqueakSource packages
I'm trying to use Stripe.com on Pharo and Gemstone I'm going to attempt to use github and follow a branch-per-platform model. The SqueakSource installation instructions use Metacello to load the Stripe packages from SqueakSource not from github.




###Basic Installation
The [Metacello](https://code.google.com/p/metacello/) configuration on squeaksource or here can install what you need to interact with the API.  The basic configuration assumes you are proxying your https traffic through a webserver or stunnel.  For Pharo you can install the 'Stripe-Zodiac' group plus the SqueakSSLPlugin from the link above to do everything from within an image.

To load the configuation run:

        `Gofer new
                squeaksource: 'Stripe';
                package: 'ConfigurationOfStripe';
                load. 

        (Smalltalk at: #ConfigurationOfStripe) load`
        
Once the package has loaded you'll need to paste your secret API keys into the relevant class side methods of StripeObject
        

####Seaside Example Credit Card Form
The package 'Stripe-Seaside' provides a working example that can interact with the Stripe servers. 

It can be loaded by running

        `Gofer new
                squeaksource: 'Stripe';
                package: 'ConfigurationOfStripe';
                load. 

        (Smalltalk at: #ConfigurationOfStripe) project stableVersion load:#('Seaside-Example')`

####Tests
The package 'Stripe-Tests' provides tests that rely on your secret **test** API keys to run successfully.  Be sure to check that you are using the **test** keys rather than the **live** keys.  Using the live keys should just result in all the tests failing but I'm not sure as I have not tried it yet.

        `Gofer new
                squeaksource: 'Stripe';
                package: 'ConfigurationOfStripe';
                load. 

        (Smalltalk at: #ConfigurationOfStripe) project stableVersion load:#('Tests')`
        
##Installation using Github packages

You have to install the [FileTree](https://github.com/dalehenrich/filetree) Monticello extension which allows Monticello to read/write git repositories.  Then clone this repository into a local directory on your filesystem.  Then load the packages from the git repo on your system into your image.  Currently there isn't Metacello support for FileTree repositories and so you have to load the dependencies by hand.  But Dale is working on it.

###Basic Installation


1. Load JSON.

        `Gofer new
                squeaksource:'JSON';
                package:'JSON';
                load.`

2. Load Zinc.

        `Gofer new
                squeaksource:'ZincHTTPComponents';
                package:'ConfigurationOfZincHTTPComponents';
                load.'
        (Smalltalk at: #ConfigurationOfZincHTTPComponents') load.`
        
1. Load FileTree by following the instructions for your platform [here]((https://github.com/dalehenrich/filetree)

1. Clone this git repository in your filesystem somewhere reachable from your Smalltalk image

        `git clone https://github.com/pdebruic/stripe-smalltalk.git`

3. Load Stripe core package from the git repo you just created
        
        `Gofer new
                repository: (MCFileTreeRepository new directory: 
                                (FileDirectory on: '/path/to/your/stripe/git/repository/'));
                package: 'Stripe';
                load.`

4. Set the API keys in the class side of StripeObject to your API keys.

####Seaside Example Credit Card Form
Follow the basic instructions above then:

1. Load the latest stable Seaside (3.0.7 right now)
        
        `Gofer new
                 squeaksource: 'MetacelloRepository';
                 package: 'ConfigurationOfSeaside30';
                load.
        (Smalltalk at: #ConfigurationOfSeaside30) load.`

1. Load the 'Stripe-Seaside' package from your local copy of this git repository:

         `Gofer new
                repository: (MCFileTreeRepository new directory: 
                                (FileDirectory on: '/path/to/your/stripe/git/repository/'));
                package: 'Stripe-Seaside';
                load.`
                
####Tests

The tests  that rely on your secret **test** API keys to run successfully.  Be sure to check that you are using the **test** keys rather than the **live** keys.  Using the live keys should just result in all the tests failing but I'm not sure as I have not tried it yet.

Follow the basic instructions above then

1. Load the 'Stripe-Tests' package from your local copy of this git repository:

         `Gofer new
                repository: (MCFileTreeRepository new directory: 
                                (FileDirectory on: '/path/to/your/stripe/git/repository/'));
                package: 'Stripe-Tests';
                load.`
