require 'fileutils'
FileUtils.rm_rf Dir['*_*.wav']

ENV['PATH'] = ENV['PATH'] + ';.' # allow it to execute go2.bat from pwd [yikes]

figure_x = [[-1, 1], [-1, 3.1], [0, 2], [2, 1.1], [2,3]]
slant = [[-1, 1], [0, 2], [2,3]]
system("go.bat") # rebuild the .exe

name_to_do = "slant"
all = []
for x, y in eval(name_to_do) do
  z = 0
  original_output_filename="#{x}_#{y}_#{z}.wav"
  system(c = "go2 #{x} #{y} #{z} tick.raw")
  if x < 0
    x = "_#{x}" # command line friendlier name
  end
  if y < 0
    y = "_#{y}" # command line friendlier 
  end
  end_output_filename="#{x}_#{y}.wav"
  FileUtils.mv original_output_filename, end_output_filename
  all << end_output_filename
end
system(c = "sox -m #{all.join ' '} #{name_to_do}.wav")
puts "created #{name_to_do}.wav"
system(c = "ffplay #{name_to_do}.wav -autoexit")
puts c