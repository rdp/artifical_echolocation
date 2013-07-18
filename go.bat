del footsteps.exe
gcc footsteps.c -o footsteps.exe -I ..\openal-soft-1.15.1-bin\include -L. -lOpenAl32
del output.wav

echo footsteps.exe 1 2 5 footsteps-4.raw
echo ffplay output.wav