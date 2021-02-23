---
syntax: julia
---

####################################################
## 5. Types
####################################################

# Julia has a type system.
# Every value has a type; variables do not have types themselves.
# You can use the `typeof` function to get the type of a value.
typeof(5)  # => Int64

# Types are first-class values
typeof(Int64)     # => DataType
typeof(DataType)  # => DataType
# DataType is the type that represents types, including itself.

# Types are used for documentation, optimizations, and dispatch.
# They are not statically checked.

# Users can define types
# They are like records or structs in other languages.
# New types are defined using the `struct` keyword.

# struct Name
#   field::OptionalType
#   ...
# end
struct Tiger
    taillength::Float64
    coatcolor  # not including a type annotation is the same as `::Any`
end

# The default constructor's arguments are the properties
# of the type, in the order they are listed in the definition
tigger = Tiger(3.5, "orange")  # => Tiger(3.5,"orange")

# The type doubles as the constructor function for values of that type
sherekhan = typeof(tigger)(5.6, "fire")  # => Tiger(5.6,"fire")

# These struct-style types are called concrete types
# They can be instantiated, but cannot have subtypes.
# The other kind of types is abstract types.

# abstract Name
abstract type Cat end  # just a name and point in the type hierarchy

# Abstract types cannot be instantiated, but can have subtypes.
# For example, Number is an abstract type
subtypes(Number)  # => 2-element Array{Any,1}:
                  # =>  Complex
                  # =>  Real
subtypes(Cat)  # => 0-element Array{Any,1}

# AbstractString, as the name implies, is also an abstract type
subtypes(AbstractString)  # => 4-element Array{Any,1}:
                          # =>  String
                          # =>  SubString
                          # =>  SubstitutionString
                          # =>  Test.GenericString

# Every type has a super type; use the `supertype` function to get it.
typeof(5) # => Int64
supertype(Int64)    # => Signed
supertype(Signed)   # => Integer
supertype(Integer)  # => Real
supertype(Real)     # => Number
supertype(Number)   # => Any
supertype(supertype(Signed))  # => Real
supertype(Any)      # => Any
# All of these type, except for Int64, are abstract.
typeof("fire")      # => String
supertype(String)   # => AbstractString
# Likewise here with String
supertype(SubString)  # => AbstractString

# <: is the subtyping operator
struct Lion <: Cat  # Lion is a subtype of Cat
    maneColor
    roar::AbstractString
end

# You can define more constructors for your type
# Just define a function of the same name as the type
# and call an existing constructor to get a value of the correct type
Lion(roar::AbstractString) = Lion("green", roar)
# This is an outer constructor because it's outside the type definition

struct Panther <: Cat  # Panther is also a subtype of Cat
    eyeColor
    Panther() = new("green")
    # Panthers will only have this constructor, and no default constructor.
end
# Using inner constructors, like Panther does, gives you control
# over how values of the type can be created.
# When possible, you should use outer constructors rather than inner ones.
