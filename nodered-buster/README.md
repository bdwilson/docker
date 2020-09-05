# nodered-buster

This is node-red on top of a buster image. It also has a configuration that
gives the docker image it's own IP address. I needed this to be able to run ARP
commands from within node-red.  run.sh doesn't have these customizations,
run-custom-network.sh does - you'll need to review the network scripts to make
sure your network is setup like mine.
