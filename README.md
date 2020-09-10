# docker

* [apache](https://github.com/bdwilson/docker/tree/master/apache) - Focused on being a reverse proxy for many of the services below.
* [homebridge](https://github.com/bdwilson/docker/tree/master/homebridge) - already has a pre-made container, but I added the port needed for HubConnect to function.
* [hubconnect](https://github.com/bdwilson/docker/tree/master/hubconnect) - designed to work with Homebridge & Hubitat.
* [nodered](https://github.com/bdwilson/docker/tree/master/nodered-buster) - my node-red image and optional customizations to setup the container with it's own IP address.
* [alexa-cookie](https://github.com/bdwilson/docker/tree/master/nodered-buster) - For use with [Alexa TTS](https://community.hubitat.com/t/release-amazon-alexa-text-to-speech-tts-v0-5-8-direct-integration-usa-canada-uk-italy-australia-brazil)

Beyond this repo, there are some other projects that I've created that come
with their own docker configs.  Those are:
* [camect-connector](https://github.com/bdwilson/camect-connector)
* [raincloudy-flask](https://github.com/bdwilson/raincloudy-flask)
* [ecovacs-api](https://github.com/bdwilson/ecovacs-api)

# Notes

I typically install my docker containers under /var/docker, so you'll see that
referenced in the shell scripts.  


