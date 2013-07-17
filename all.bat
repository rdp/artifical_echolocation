call go2 -1 1
mv -- -1_1.wav neg1_1.wav
call go2 -1 3
mv -- -1_3.wav neg1_3.wav
call go2 0 2
call go2 2 1
call go2 2 3
sox -m -- neg1_1.wav neg1_3.wav 0_2.wav 2_1.wav 2_3.wav all.wav