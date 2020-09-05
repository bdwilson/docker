# apache docker

Based on [this docker image](https://github.com/sadimusi/docker-apache)

I added PHP and libapache2-mod-auth-openidc. PHP was needed for [camect-snapshot](https://github.com/bdwilson/camect-snapshot).

I have some example proxy configurations for you to proxy connections to
hubitat, homebridge, and nodered. I use cloudflare for DNS for my domain, so
you'll need to follow docs on how to set that up for LetsEncrypt - [Digital
Ocean](https://www.digitalocean.com/community/tutorials/how-to-acquire-a-let-s-encrypt-certificate-using-dns-validation-with-acme-dns-certbot-on-ubuntu-18-04)
has a good doc on how to do this.

I also have my domain hosted at Google, so I'm using my personal domain login
to login to these. You may be able to use a regular google account, but I
believe you'll have to have your OIDC workflow approved unless you're using
your own domain.  [Here](https://github.com/zmartzone/mod_auth_openidc#how-to-use-it) is a link on setting up OIDC with Google for Apache.

