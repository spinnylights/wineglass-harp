# Wineglass Harp

This is a synth that uses physical modeling opcodes in CSound to simulate a giant wineglass with strings strung across it that are plucked.

## Installation (for DAW usage)

The VST was made using [Cabbage](http://cabbageaudio.com/), so you may want to consult their site if you're having problems getting it set up (any problematic behavior of the instrument itself is on me, though).

1. [Install Csound](http://csound.github.io/download.html).
1. `git clone https://github.com/spinnylights/wineglass-harp`.
1. Copy the .vst to the appropriate directory on your system. If you're not sure, these are the defaults:
  * __Windows__: Try `C:\Program Files\Steinberg\Vstplugins\`.
  * __Mac__: `~/Library/Audio/Plug-Ins/VST`.
  * __Linux__: `~/.vst`.
1. Fire up your DAW, load the VST on a track, and enjoy!

## Caveats

This instrument is in a very early and unpolished state. Use at your own risk. It's worth putting it behind a limiter in case it blows up and becomes very loud (it shouldn't do this if you stay within the recommend note range but it's worth being careful).

The only usable range at the moment is G3 to F#5. Go below that and you'll get distortion; go above it and the instrument glitches out (in a boring way, not a fun one 😞). I hope to expand its range to that of a standard pedal harp in the future.

You may get clicks at the beginnings of notes if you play chords. Single notes should be okay.

Each note must have a long duration (like 3 seconds or so) or you'll get clipping when then note is released. This makes playing the instrument with a keyboard awkward, unfortunately.

All of these issues should be fixed in future updates. I threw this together very quickly for a specific project, so I haven't yet done much work to get it to function well outside of that context.
