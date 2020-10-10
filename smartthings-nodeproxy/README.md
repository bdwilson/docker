# smartthings-nodeproxy server for Hubitat/Smartthings

This is intended to be used with my [Hubitat Honeywell Vista](https://github.com/bdwilson/hubitat/tree/master/Honeywell) Integration.

1. <code>git clone https://github.com/bdwilson/docker; cd docker/smartthings-nodeproxy, cp config.json.sample config.json</code>
2. Review the __Config__ Section [here](https://github.com/redloro/smartthings) and adjust as needed. At a minimum, adjust passwords/authCodes and your zones.
3. <code>./build.sh</code>
3. <code>./run.sh</code>

Keep in mind this was built to run on a raspberrypi. You may need to adjust the
Dockerfile to read __FROM debian:buster-slim__ if you're using on another linux
system. This also assumes that the user you're running both __build.sh__ and
__run.sh__ as has permissions to execute containers - my __pi__ user has such
permissions.

