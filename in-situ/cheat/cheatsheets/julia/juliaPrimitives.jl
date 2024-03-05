---
syntax: julia
---

####################################################
## 1. Primitive Datatypes and Operators
####################################################

# Everything in Julia is an expression.

# Single line comments start with a hash (pound) symbol.
#= Multiline comments can be written
   by putting '#=' before the text  and '=#'
   after the text. They can also be nested.
=#

# There are several basic types of numbers.
typeof(3)       # => Int64
typeof(3.2)     # => Float64
typeof(2 + 1im) # => Complex{Int64}
typeof(2 // 3)  # => Rational{Int64}

# All of the normal infix operators are available.
1 + 1      # => 2
8 - 1      # => 7
10 * 2     # => 20
35 / 5     # => 7.0
10 / 2     # => 5.0  # dividing integers always results in a Float64
div(5, 2)  # => 2    # for a truncated result, use div
5 \ 35     # => 7.0
2^2        # => 4    # power, not bitwise xor
12 % 10    # => 2

# Enforce precedence with parentheses
(1 + 3) * 2  # => 8

# Julia (unlike Python for instance) has integer under/overflow
10^19      # => -8446744073709551616
# use bigint or floating point to avoid this
big(10)^19 # => 10000000000000000000
1e19       # => 1.0e19
10.0^19    # => 1.0e19

# Bitwise Operators
~2         # => -3 # bitwise not
3 & 5      # => 1  # bitwise and
2 | 4      # => 6  # bitwise or
xor(2, 4)  # => 6  # bitwise xor
2 >>> 1    # => 1  # logical shift right
2 >> 1     # => 1  # arithmetic shift right
2 << 1     # => 4  # logical/arithmetic shift left

# Use the bitstring function to see the binary representation of a number.
bitstring(12345)
# => "0000000000000000000000000000000000000000000000000011000000111001"
bitstring(12345.0)
# => "0100000011001000000111001000000000000000000000000000000000000000"

# Boolean values are primitives
true
false

# Boolean operators
!true   # => false
!false  # => true
1 == 1  # => true
2 == 1  # => false
1 != 1  # => false
2 != 1  # => true
1 < 10  # => true
1 > 10  # => false
2 <= 2  # => true
2 >= 2  # => true
# Comparisons can be chained
1 < 2 < 3  # => true
2 < 3 < 2  # => false

# Strings are created with "
"This is a string."

# Character literals are written with '
'a'

# Strings are UTF8 encoded. Only if they contain only ASCII characters can
# they be safely indexed.
ascii("This is a string")[1]  
# => 'T': ASCII/Unicode U+0054 (category Lu: Letter, uppercase)
# Julia indexes from 1
# Otherwise, iterating over strings is recommended (map, for loops, etc).

# String can be compared lexicographically
"good" > "bye" # => true
"good" == "good" # => true
"1 + 2 = 3" == "1 + 2 = $(1 + 2)" # => true

# $ can be used for string interpolation:
"2 + 2 = $(2 + 2)" # => "2 + 2 = 4"
# You can put any Julia expression inside the parentheses.

# Printing is easy
println("I'm Julia. Nice to meet you!") # => I'm Julia. Nice to meet you!

# Another way to format strings is the printf macro from the stdlib Printf.
using Printf
@printf "%d is less than %f\n" 4.5 5.3  # => 5 is less than 5.300000
