@rem create spatial file of click, no z-axis for now
footsteps.exe %1 %2 0
@rem pad with initial silence
sox output.wav output_longer.wav pad %2 0
cp output_longer.wav %1_%2.wav