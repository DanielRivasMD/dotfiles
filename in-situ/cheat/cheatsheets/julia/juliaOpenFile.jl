---
syntax: julia
---

####################################################
## Open File
####################################################


####################################################

# Opening a file in read_mode
# r is the default mode
f = open("test.txt", "r")

# do some file operations

# close the file instance
close(f)


# opening a file in read_mode
open("test.txt") do f

  # do stuff with the open file instance 'f'

end
# opened file is automatically closed after the do control ends.

####################################################

# read file contents, one line at a time
open("test.txt") do f

  # line_number
  line = 0

  # read till end of file
  while ! eof(f)

    # read a new / next line for every iteration
    s = readline(f)
    line += 1
    println("$line . $s")
  end

end

####################################################

# opening a file in read_mode
# r is the default mode
f = open("test.txt", "r")

# to count total lines in the file
line_count = 0

for lines in readlines(f)

  # increment line_count
  global line_count += 1

  # print the line
  println(lines)

end

# total lines in file
println("line count is $line_count")

close(f)

####################################################

# since the presence of file is uncertain we'll use try catch
try
  open("dummy.txt", "r") do s
  # perform desired operations if file exists
  end
catch
  # either warn or print that the file doesn't exist
  println("file doesn't exist")
end

####################################################
