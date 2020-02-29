---
syntax: julia
---

####################################################
## 2. Variables and Collections
####################################################

# You don't declare variables before assigning to them.
someVar = 5  # => 5
someVar  # => 5

# Accessing a previously unassigned variable is an error
try
    someOtherVar  # => ERROR: UndefVarError: someOtherVar not defined
catch e
    println(e)
end

# Variable names start with a letter or underscore.
# After that, you can use letters, digits, underscores, and exclamation points.
SomeOtherVar123! = 6  # => 6

# You can also use certain unicode characters
☃ = 8  # => 8
# These are especially handy for mathematical notation
2 * π # => 6.283185307179586

# A note on naming conventions in Julia:
#
# * Word separation can be indicated by underscores ('_'), but use of
#   underscores is discouraged unless the name would be hard to read
#   otherwise.
#
# * Names of Types begin with a capital letter and word separation is shown
#   with CamelCase instead of underscores.
#
# * Names of functions and macros are in lower case, without underscores.
#
# * Functions that modify their inputs have names that end in !. These
#   functions are sometimes called mutating functions or in-place functions.

# Arrays store a sequence of values indexed by integers 1 through n:
a = Int64[] # => 0-element Array{Int64,1}

# 1-dimensional array literals can be written with comma-separated values.
b = [4, 5, 6] # => 3-element Array{Int64,1}: [4, 5, 6]
b = [4; 5; 6] # => 3-element Array{Int64,1}: [4, 5, 6]
b[1]    # => 4
b[end]  # => 6

# 2-dimensional arrays use space-separated values and semicolon-separated rows.
matrix = [1 2; 3 4] # => 2×2 Array{Int64,2}: [1 2; 3 4]

# Arrays of a particular type
b = Int8[4, 5, 6] # => 3-element Array{Int8,1}: [4, 5, 6]

# Add stuff to the end of a list with push! and append!
# By convention, the exclamation mark '!'' is appended to names of functions
# that modify their arguments
push!(a, 1)    # => [1]
push!(a, 2)    # => [1,2]
push!(a, 4)    # => [1,2,4]
push!(a, 3)    # => [1,2,4,3]
append!(a, b)  # => [1,2,4,3,4,5,6]

# Remove from the end with pop
pop!(b)  # => 6
b # => [4,5]

# Let's put it back
push!(b, 6)  # => [4,5,6]
b # => [4,5,6]

a[1]  # => 1  # remember that Julia indexes from 1, not 0!

# end is a shorthand for the last index. It can be used in any
# indexing expression
a[end]  # => 6

# we also have popfirst! and pushfirst!
popfirst!(a)  # => 1 
a # => [2,4,3,4,5,6]
pushfirst!(a, 7)  # => [7,2,4,3,4,5,6]
a # => [7,2,4,3,4,5,6]

# Function names that end in exclamations points indicate that they modify
# their argument.
arr = [5,4,6]  # => 3-element Array{Int64,1}: [5,4,6]
sort(arr)   # => [4,5,6]
arr         # => [5,4,6]
sort!(arr)  # => [4,5,6]
arr         # => [4,5,6]

# Looking out of bounds is a BoundsError
try
    a[0] 
    # => ERROR: BoundsError: attempt to access 7-element Array{Int64,1} at 
    # index [0]
    # => Stacktrace:
    # =>  [1] getindex(::Array{Int64,1}, ::Int64) at .\array.jl:731
    # =>  [2] top-level scope at none:0
    # =>  [3] ...
    # => in expression starting at ...\LearnJulia.jl:180
    a[end + 1] 
    # => ERROR: BoundsError: attempt to access 7-element Array{Int64,1} at 
    # index [8]
    # => Stacktrace:
    # =>  [1] getindex(::Array{Int64,1}, ::Int64) at .\array.jl:731
    # =>  [2] top-level scope at none:0
    # =>  [3] ...
    # => in expression starting at ...\LearnJulia.jl:188
catch e
    println(e)
end

# Errors list the line and file they came from, even if it's in the standard
# library. You can look in the folder share/julia inside the julia folder to
# find these files.

# You can initialize arrays from ranges
a = [1:5;]  # => 5-element Array{Int64,1}: [1,2,3,4,5]
a2 = [1:5]  # => 1-element Array{UnitRange{Int64},1}: [1:5]

# You can look at ranges with slice syntax.
a[1:3]  # => [1, 2, 3]
a[2:end]  # => [2, 3, 4, 5]

# Remove elements from an array by index with splice!
arr = [3,4,5]
splice!(arr, 2) # => 4 
arr # => [3,5]

# Concatenate lists with append!
b = [1,2,3]
append!(a, b) # => [1, 2, 3, 4, 5, 1, 2, 3]
a # => [1, 2, 3, 4, 5, 1, 2, 3]

# Check for existence in a list with in
in(1, a)  # => true

# Examine the length with length
length(a)  # => 8

# Tuples are immutable.
tup = (1, 2, 3)  # => (1,2,3)
typeof(tup) # => Tuple{Int64,Int64,Int64}
tup[1] # => 1
try
    tup[1] = 3  
    # => ERROR: MethodError: no method matching 
    # setindex!(::Tuple{Int64,Int64,Int64}, ::Int64, ::Int64)
catch e
    println(e)
end

# Many array functions also work on tuples
length(tup) # => 3
tup[1:2]    # => (1,2)
in(2, tup)  # => true

# You can unpack tuples into variables
a, b, c = (1, 2, 3)  # => (1,2,3)  
a # => 1
b # => 2
c # => 3

# Tuples are created even if you leave out the parentheses
d, e, f = 4, 5, 6  # => (4,5,6)
d # => 4
e # => 5
f # => 6

# A 1-element tuple is distinct from the value it contains
(1,) == 1 # => false
(1) == 1  # => true

# Look how easy it is to swap two values
e, d = d, e  # => (5,4) 
d # => 5
e # => 4

# Dictionaries store mappings
emptyDict = Dict()  # => Dict{Any,Any} with 0 entries

# You can create a dictionary using a literal
filledDict = Dict("one" => 1, "two" => 2, "three" => 3)
# => Dict{String,Int64} with 3 entries:
# =>  "two" => 2, "one" => 1, "three" => 3

# Look up values with []
filledDict["one"]  # => 1

# Get all keys
keys(filledDict)
# => Base.KeySet for a Dict{String,Int64} with 3 entries. Keys:
# =>  "two", "one", "three"
# Note - dictionary keys are not sorted or in the order you inserted them.

# Get all values
values(filledDict)
# => Base.ValueIterator for a Dict{String,Int64} with 3 entries. Values: 
# =>  2, 1, 3
# Note - Same as above regarding key ordering.

# Check for existence of keys in a dictionary with in, haskey
in(("one" => 1), filledDict)  # => true
in(("two" => 3), filledDict)  # => false
haskey(filledDict, "one")     # => true
haskey(filledDict, 1)         # => false

# Trying to look up a non-existent key will raise an error
try
    filledDict["four"]  # => ERROR: KeyError: key "four" not found
catch e
    println(e)
end

# Use the get method to avoid that error by providing a default value
# get(dictionary, key, defaultValue)
get(filledDict, "one", 4)   # => 1
get(filledDict, "four", 4)  # => 4

# Use Sets to represent collections of unordered, unique values
emptySet = Set()  # => Set(Any[])
# Initialize a set with values
filledSet = Set([1, 2, 2, 3, 4])  # => Set([4, 2, 3, 1])

# Add more values to a set
push!(filledSet, 5)  # => Set([4, 2, 3, 5, 1])

# Check if the values are in the set
in(2, filledSet)   # => true
in(10, filledSet)  # => false

# There are functions for set intersection, union, and difference.
otherSet = Set([3, 4, 5, 6])         # => Set([4, 3, 5, 6])
intersect(filledSet, otherSet)      # => Set([4, 3, 5])
union(filledSet, otherSet)          # => Set([4, 2, 3, 5, 6, 1])
setdiff(Set([1,2,3,4]), Set([2,3,5])) # => Set([4, 1])
