Virtual machine for cut a flac file from a cue file.

This machine installs the next packages:

>> sudo apt-get install cuetools shntool flac

To cut the flac file you execute this command:

>> cuebreakpoints album.cue | shnsplit -o flac album.flac
