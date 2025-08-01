####################################################################################################

_default:
  @just --list

####################################################################################################

# print justfile
[group('just')]
@show:
  bat .justfile --language make

####################################################################################################

# edit justfile
[group('just')]
@edit:
  micro .justfile

####################################################################################################

# compile roadmap action items
[group('dev')]
@roadmap:
  { echo '\n=================================================='; todor -s; echo '=================================================='; } >> ROADMAP.txt

####################################################################################################

# link in-situ archive
[group('link')]
@in-situ:
  source .just/in-situ.sh

####################################################################################################

# link ex-situ archive
[group('link')]
@ex-situ:
  source .just/ex-situ.sh

####################################################################################################
