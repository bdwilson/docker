#!/bin/sh
# Run this from your docker host.
/usr/bin/certbot -n certonly --dns-cloudflare --dns-cloudflare-credentials /root/.secrets/cloudflare.ini -d yourdomain.com,*.yourdomain.com --preferred-challenges dns-01 && cp /etc/letsencrypt/archive/yourdomain.com/fullchain1.pem /var/docker/apache/certs/fullchain.pem && cp /etc/letsencrypt/archive/yourdomain.com/privkey1.pem /var/docker/apache/certs/privkey.pem && docker restart apache
