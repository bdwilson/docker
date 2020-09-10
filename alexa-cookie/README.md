# Alexa Cookie Container

# Installation

1. <code>git clone https://github.com/bdwilson/docker</code>
2. <code>cd docker/alexa-cookie</code>
3. <code>sudo ./build.sh; sudo ./run.sh</code>

# Usage
These are borrowed from the author [here](https://github.com/gabriele-v/hubitat/blob/master/AlexaCookieNodeJs/AlexaCookieNodeJs/README.md). 
- Go to ```http://[serverip]:81```
- Fill the form wih your Amazon username, password and country
- At this point, depending on Amazon security, cookie refresh options could be immediately generated or a message will ask to go to webpage ```http://[serverip]:82``` (proxy) that will be opened in a new tab
- **IMPORTANT!** do not close the original (let's call it :81) tab
- Login again on second page (with 2FA if enabled)
- **IMPORTANT!** After succesfull login on second webpage, a message will be prompted to close the browser: don't close the browser, but instead close only that tab (:82) and go back to the original tab (:81)
- Copy the RefreshURL and RefreshOptions in the relative fields on Hubitat Alexa TTS App
- Refresh will be now handled automatically between Hubitat and wrapper every 6 days, without human intervention requirement


