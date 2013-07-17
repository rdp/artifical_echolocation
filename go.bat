call make -C ../openal-soft/build
copy ..\openal-soft\build\OpenAL32.dll .
del footsteps.exe
gcc footsteps.c -o footsteps.exe -I ..\openal-soft-1.15.1-bin\include -L. -lOpenAl32
del output.wav
footsteps.exe 1 2 5
ffplay output.wav