rm *_*.wav
call go2 -1 1
mv -- -1_1.wav neg1_1.wav
call go2 -1 3.1
mv -- -1_3.1.wav neg1_3.1.wav
call go2 0 2
call go2 2 1.1
call go2 2 3
call sox -m -- neg1_1.wav neg1_3.1.wav 0_2.wav 2_1.1.wav 2_3.wav all.wav
call ffplay all.wav -autoexit