del footsteps.exe
gcc footsteps.c -o footsteps.exe -I ..\openal-soft-1.15.1-bin\include -L. -lOpenAl32
del output.wav
footsteps.exe 2 2 0 tick.raw
ffplay -noautoexit output.wav