# Wineglass Harp

This is a synth that uses physical modeling opcodes in CSound to simulate a giant wineglass with strings strung across it that are plucked.

You can listen to a demo [here](https://soundcloud.com/user-887398465/plucked-glass-test).

## Installation (for DAW usage)

The VST was made using [Cabbage](http://cabbageaudio.com/), so you may want to consult their site if you're having problems getting it set up (any problematic behavior of the instrument itself is on me, though).

1. [Install Csound](http://csound.github.io/download.html).
1. `git clone https://github.com/spinnylights/wineglass-harp`.
1. Copy the appropriate VST file to the appropriate directory on your system. If you're not sure, these are the defaults:
  * __Windows__: Use the .dll and try `C:\Program Files\Steinberg\Vstplugins\`.
  * __Mac__: Use the .vst and `~/Library/Audio/Plug-Ins/VST`.
  * __Linux__: `~/.vst`.
1. Fire up your DAW, load the VST on a track, and enjoy!

## Caveats

This instrument is in a very early and unpolished state. Use at your own risk. It's worth putting it behind a limiter in case it blows up and becomes very loud (it shouldn't do this if you stay within the recommend note range but it's worth being careful).

The only usable range at the moment is G3 to F#5. Go below that and you'll get distortion; go above it and the instrument glitches out (in a boring way, not a fun one 😞). I hope to expand its range to that of a standard pedal harp in the future.

You may get clicks at the beginnings of notes if you play chords. Single notes should be okay.

Each note must have a long duration (like 3 seconds or so) or you'll get clipping when then note is released. This makes playing the instrument with a keyboard awkward, unfortunately.

All of these issues should be fixed in future updates. I threw this together very quickly for a specific project, so I haven't yet done much work to get it to function well outside of that context.

## Contributing

Feel free to submit a pull request! You can also [open an issue](https://github.com/spinnylights/wineglass-harp/issues) if you run into problems I haven't discussed.

This project uses the [Contributor Covenant](http://contributor-covenant.org/) as its code of conduct. Please follow the code of conduct in all of your interactions with this project (see the file `CODE_OF_CONDUCT.md` at the project root). If it ever gets large enough to have multiple people working on it and you feel that someone is treating you in a manner not in line with the code of conduct, please contact me at the email address specified in the code of conduct document. If I feel that you have violated the code of conduct in your interactions with this project, I'll give you a warning, and if you do it again, I'll permaban you from the repo. So play nice ^\_^
