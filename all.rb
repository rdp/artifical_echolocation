require 'fileutils'
FileUtils.rm_rf Dir['*_*.wav']
all = []
ENV['PATH'] = ENV['PATH'] + ';.' # allow it to execute go2.bat locally [yikes]

figure_x = [[-1, 1], [-1, 3.1], [0, 2], [2, 1.1], [2,3]]
slant = [[-1, 1], [0, 2], [2,3]]

name="figure_x"

for x, y in eval(name) do
  z = 0
  if x < 0
    x = "_#{x}" # command line friendlier name
  end
  if y < 0
    y = "_#{y}" # command line friendlier 
  end
  output_filename="#{x}_#{y}_#{z}.wav"
  end_output_filename="#{x}_#{y}.wav"
  if !File.exist? end_output_filename
    system(c = "go2 #{x} #{y} #{z}")
  end
  FileUtils.mv output_filename, end_output_filename
  all << end_output_filename
end
system(c = "sox -m #{all.join ' '} #{name}.wav")
puts "created #{name}.wav"
system("ffplay #{name}.wav -autoexit")