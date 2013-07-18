require 'fileutils'
FileUtils.rm_rf Dir['*_*.wav']
all = []
ENV['PATH'] = ENV['PATH'] + ';.' # allow it to execute go2.bat locally [yikes]

figure_x = [[-1, 1], [-1, 3.1], [0, 2], [2, 1.1], [2,3]]

slant = [[-1, 1], [0, 2], [2,3]]
name="slant"

for x, y in eval(name) do
  z = 0
  system(c = "go2 #{x} #{y} #{z}")
  puts c
  output_filename="#{x}_#{y}_#{z}.wav"
  if x < 0
    x = "_#{x}" # command line friendlier name
  end
  if y < 0
    y = "_#{y}" # command line friendlier 
  end
  desired_output_filename="#{x}_#{y}.wav"
  FileUtils.mv output_filename, desired_output_filename
  all << desired_output_filename
end
system(c = "sox -m #{all.join ' '} #{name}.wav")
puts c
system("ffplay #{name}.wav -autoexit")