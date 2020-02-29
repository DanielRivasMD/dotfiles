---
syntax: julia
---

####################################################
## 3. Control Flow
####################################################

# Let's make a variable
someVar = 5

# Here is an if statement. Indentation is not meaningful in Julia.
if someVar > 10
    println("someVar is totally bigger than 10.")
elseif someVar < 10    # This elseif clause is optional.
    println("someVar is smaller than 10.")
else                    # The else clause is optional too.
    println("someVar is indeed 10.")
end
# => prints "some var is smaller than 10"

# For loops iterate over iterables.
# Iterable types include Range, Array, Set, Dict, and AbstractString.
for animal = ["dog", "cat", "mouse"]
    println("$animal is a mammal")
    # You can use $ to interpolate variables or expression into strings
end
# => dog is a mammal
# => cat is a mammal
# => mouse is a mammal

# You can use 'in' instead of '='.
for animal in ["dog", "cat", "mouse"]
    println("$animal is a mammal")
end
# => dog is a mammal
# => cat is a mammal
# => mouse is a mammal

for pair in Dict("dog" => "mammal", "cat" => "mammal", "mouse" => "mammal")
    from, to = pair
    println("$from is a $to")
end
# => mouse is a mammal
# => cat is a mammal
# => dog is a mammal

for (k, v) in Dict("dog" => "mammal", "cat" => "mammal", "mouse" => "mammal")
    println("$k is a $v")
end
# => mouse is a mammal
# => cat is a mammal
# => dog is a mammal

# While loops loop while a condition is true
let x = 0
    while x < 4
        println(x)
        x += 1  # Shorthand for x = x + 1
    end
end
# => 0
# => 1
# => 2
# => 3

# Handle exceptions with a try/catch block
try
    error("help")
catch e
    println("caught it $e")
end
# => caught it ErrorException("help")
