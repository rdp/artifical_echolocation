@rem also need to preced with  this: > sox XX.wav -b 16 XX.raw channels 1 rate 44100
@rem also need to setup openal config first...

@rem create spatial file of click, no z-axis for now
footsteps.exe %1 %2 0 tick.raw
@rem pad with initial silence
call sox output.wav output_longer.wav pad %2 0
call cp -- output_longer.wav %1_%2.wav
echo created %1_%2.wav