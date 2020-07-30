---
syntax: julia
---

####################################################
## 4. Functions
####################################################

# The keyword 'function' creates new functions
# function name(arglist)
#   body...
# end
function add(x, y)
    println("x is $x and y is $y")

    # Functions return the value of their last statement
    x + y
end

add(5, 6)
# => x is 5 and y is 6
# => 11

# Compact assignment of functions
f_add(x, y) = x + y  # => f_add (generic function with 1 method)
f_add(3, 4)  # => 7

# Function can also return multiple values as tuple
fn(x, y) = x + y, x - y # => fn (generic function with 1 method)
fn(3, 4)  # => (7, -1)

# You can define functions that take a variable number of
# positional arguments
function varargs(args...)
    return args
    # use the keyword return to return anywhere in the function
end
# => varargs (generic function with 1 method)

varargs(1, 2, 3)  # => (1,2,3)

# The ... is called a splat.
# We just used it in a function definition.
# It can also be used in a function call,
# where it will splat an Array or Tuple's contents into the argument list.
add([5,6]...)  # this is equivalent to add(5,6)

x = (5, 6)  # => (5,6)
add(x...)  # this is equivalent to add(5,6)


# You can define functions with optional positional arguments
function defaults(a, b, x=5, y=6)
    return "$a $b and $x $y"
end
# => defaults (generic function with 3 methods)

defaults('h', 'g')  # => "h g and 5 6"
defaults('h', 'g', 'j')  # => "h g and j 6"
defaults('h', 'g', 'j', 'k')  # => "h g and j k"
try
    defaults('h')  # => ERROR: MethodError: no method matching defaults(::Char)
    defaults()  # => ERROR: MethodError: no method matching defaults()
catch e
    println(e)
end

# You can define functions that take keyword arguments
function keyword_args(;k1=4, name2="hello")  # note the ;
    return Dict("k1" => k1, "name2" => name2)
end
# => keyword_args (generic function with 1 method)

keyword_args(name2="ness")  # => ["name2"=>"ness", "k1"=>4]
keyword_args(k1="mine")     # => ["name2"=>"hello", "k1"=>"mine"]
keyword_args()              # => ["name2"=>"hello", "k1"=>4]

# You can combine all kinds of arguments in the same function
function all_the_args(normalArg, optionalPositionalArg=2; keywordArg="foo")
    println("normal arg: $normalArg")
    println("optional arg: $optionalPositionalArg")
    println("keyword arg: $keywordArg")
end
# => all_the_args (generic function with 2 methods)

all_the_args(1, 3, keywordArg=4)
# => normal arg: 1
# => optional arg: 3
# => keyword arg: 4

# Julia has first class functions
function create_adder(x)
    adder = function (y)
        return x + y
    end
    return adder
end
# => create_adder (generic function with 1 method)

# This is "stabby lambda syntax" for creating anonymous functions
(x -> x > 2)(3)  # => true

# This function is identical to create_adder implementation above.
function create_adder(x)
    y -> x + y
end
# => create_adder (generic function with 1 method)

# You can also name the internal function, if you want
function create_adder(x)
    function adder(y)
        x + y
    end
    adder
end
# => create_adder (generic function with 1 method)

add_10 = create_adder(10) # => (::getfield(Main, Symbol("#adder#11")){Int64}) 
                          # (generic function with 1 method)
add_10(3) # => 13


# There are built-in higher order functions
map(add_10, [1,2,3])  # => [11, 12, 13]
filter(x -> x > 5, [3, 4, 5, 6, 7])  # => [6, 7]

# We can use list comprehensions
[add_10(i) for i = [1, 2, 3]]   # => [11, 12, 13]
[add_10(i) for i in [1, 2, 3]]  # => [11, 12, 13]
[x for x in [3, 4, 5, 6, 7] if x > 5] # => [6, 7]
