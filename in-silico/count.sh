####################################################################################################

# TODO: add to Lou
# count dir
count_dir() {
  fd . --type=d --max-depth=1 | /usr/bin/wc -l
}

# count file
count_file() {
  fd . --type=f --max-depth=1 | /usr/bin/wc -l
}

####################################################################################################
