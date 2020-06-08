# Fluidsynth Headless Setup
Headless Fluidsynth bash scripts

The bash scripts will need to be modified depending on your midi controller and required fluidsynth settings.

The instrument files will also need to be modified to point to the location of your sf2 files.

## fluidsynth.sh
prompts the user to enter the instrument choice, after listing all the options

E.g.

'''
$ ./fluidsynth.sh

wurli
keyboard
piano

instrument: wurli
'''


## startup.sh
takes the instrument in as an argument instead of requesting user input, so can be run as a one line command.

E.g.

'''
$ ./startup.sh wurli
'''

This can be easily added to the bashrc file, to automatically run on login

## inst/example

This is a file that can be passed as the argument to either of the bash scripts, and tells it where to find the sf2 file and also the channel configuration and gain for the specific instrument.

You will need to create one of these for each instrument you want to use with fluidsynth
