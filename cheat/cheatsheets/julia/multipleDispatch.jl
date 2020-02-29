---
syntax: julia
---

####################################################
## 6. Multiple-Dispatch
####################################################

# In Julia, all named functions are generic functions
# This means that they are built up from many small methods
# Each constructor for Lion is a method of the generic function Lion.

# For a non-constructor example, let's make a function meow:

# Definitions for Lion, Panther, Tiger
function meow(animal::Lion)
    animal.roar  # access type properties using dot notation
end

function meow(animal::Panther)
    "grrr"
end

function meow(animal::Tiger)
    "rawwwr"
end

# Testing the meow function
meow(tigger)  # => "rawwwr"
meow(Lion("brown", "ROAAR"))  # => "ROAAR"
meow(Panther()) # => "grrr"

# Review the local type hierarchy
Tiger   <: Cat  # => false
Lion    <: Cat  # => true
Panther <: Cat  # => true

# Defining a function that takes Cats
function pet_cat(cat::Cat)
    println("The cat says $(meow(cat))")
end
# => pet_cat (generic function with 1 method)

pet_cat(Lion("42")) # => The cat says 42
try
    pet_cat(tigger) # => ERROR: MethodError: no method matching pet_cat(::Tiger)
catch e
    println(e)
end

# In OO languages, single dispatch is common;
# this means that the method is picked based on the type of the first argument.
# In Julia, all of the argument types contribute to selecting the best method.

# Let's define a function with more arguments, so we can see the difference
function fight(t::Tiger, c::Cat)
    println("The $(t.coatcolor) tiger wins!")
end
# => fight (generic function with 1 method)

fight(tigger, Panther())  # => The orange tiger wins!
fight(tigger, Lion("ROAR")) # => The orange tiger wins!

# Let's change the behavior when the Cat is specifically a Lion
fight(t::Tiger, l::Lion) = println("The $(l.maneColor)-maned lion wins!")
# => fight (generic function with 2 methods)

fight(tigger, Panther())  # => The orange tiger wins!
fight(tigger, Lion("ROAR")) # => The green-maned lion wins!

# We don't need a Tiger in order to fight
fight(l::Lion, c::Cat) = println("The victorious cat says $(meow(c))")
# => fight (generic function with 3 methods)

fight(Lion("balooga!"), Panther())  # => The victorious cat says grrr
try
    fight(Panther(), Lion("RAWR"))  
    # => ERROR: MethodError: no method matching fight(::Panther, ::Lion)
    # => Closest candidates are:
    # =>   fight(::Tiger, ::Lion) at ...
    # =>   fight(::Tiger, ::Cat) at ...
    # =>   fight(::Lion, ::Cat) at ...
    # => ...
catch e
    println(e)
end

# Also let the cat go first
fight(c::Cat, l::Lion) = println("The cat beats the Lion")
# => fight (generic function with 4 methods)

# This warning is because it's unclear which fight will be called in:
try
    fight(Lion("RAR"), Lion("brown", "rarrr"))
    # => ERROR: MethodError: fight(::Lion, ::Lion) is ambiguous. Candidates:
    # =>   fight(c::Cat, l::Lion) in Main at ...
    # =>   fight(l::Lion, c::Cat) in Main at ...
    # => Possible fix, define
    # =>   fight(::Lion, ::Lion)
    # => ...
catch e
    println(e)
end
# The result may be different in other versions of Julia

fight(l::Lion, l2::Lion) = println("The lions come to a tie") 
# => fight (generic function with 5 methods)
fight(Lion("RAR"), Lion("brown", "rarrr"))  # => The lions come to a tie


# Under the hood
# You can take a look at the llvm  and the assembly code generated.

square_area(l) = l * l  # square_area (generic function with 1 method)

square_area(5)  # => 25

# What happens when we feed square_area an integer?
code_native(square_area, (Int32,), syntax = :intel)
	#         .text
	# ; Function square_area {
	# ; Location: REPL[116]:1       # Prologue
	#         push    rbp
	#         mov     rbp, rsp
	# ; Function *; {
	# ; Location: int.jl:54
	#         imul    ecx, ecx      # Square l and store the result in ECX
	# ;}
	#         mov     eax, ecx
	#         pop     rbp           # Restore old base pointer
	#         ret                   # Result will still be in EAX
	#         nop     dword ptr [rax + rax]
	# ;}

code_native(square_area, (Float32,), syntax = :intel)
    #         .text
    # ; Function square_area {
    # ; Location: REPL[116]:1
    #         push    rbp
    #         mov     rbp, rsp
    # ; Function *; {
    # ; Location: float.jl:398
    #         vmulss  xmm0, xmm0, xmm0  # Scalar single precision multiply (AVX)
    # ;}
    #         pop     rbp
    #         ret
    #         nop     word ptr [rax + rax]
    # ;}

code_native(square_area, (Float64,), syntax = :intel)
    #         .text
    # ; Function square_area {
    # ; Location: REPL[116]:1
    #         push    rbp
    #         mov     rbp, rsp
    # ; Function *; {
    # ; Location: float.jl:399
    #         vmulsd  xmm0, xmm0, xmm0  # Scalar double precision multiply (AVX)
    # ;}
    #         pop     rbp
    #         ret
    #         nop     word ptr [rax + rax]
    # ;}

# Note that julia will use floating point instructions if any of the
# arguments are floats.
# Let's calculate the area of a circle
circle_area(r) = pi * r * r     # circle_area (generic function with 1 method)
circle_area(5)  # 78.53981633974483

code_native(circle_area, (Int32,), syntax = :intel)
    #         .text
    # ; Function circle_area {
    # ; Location: REPL[121]:1
    #         push    rbp
    #         mov     rbp, rsp
    # ; Function *; {
    # ; Location: operators.jl:502
    # ; Function *; {
    # ; Location: promotion.jl:314
    # ; Function promote; {
    # ; Location: promotion.jl:284
    # ; Function _promote; {
    # ; Location: promotion.jl:261
    # ; Function convert; {
    # ; Location: number.jl:7
    # ; Function Type; {
    # ; Location: float.jl:60
    #         vcvtsi2sd       xmm0, xmm0, ecx     # Load integer (r) from memory
    #         movabs  rax, 497710928              # Load pi
    # ;}}}}}
    # ; Function *; {
    # ; Location: float.jl:399
    #         vmulsd  xmm1, xmm0, qword ptr [rax] # pi * r
    #         vmulsd  xmm0, xmm1, xmm0            # (pi * r) * r
    # ;}}
    #         pop     rbp
    #         ret
    #         nop     dword ptr [rax]
    # ;}

code_native(circle_area, (Float64,), syntax = :intel)
    #         .text
    # ; Function circle_area {
    # ; Location: REPL[121]:1
    #         push    rbp
    #         mov     rbp, rsp
    #         movabs  rax, 497711048
    # ; Function *; {
    # ; Location: operators.jl:502
    # ; Function *; {
    # ; Location: promotion.jl:314
    # ; Function *; {
    # ; Location: float.jl:399
    #         vmulsd  xmm1, xmm0, qword ptr [rax]
    # ;}}}
    # ; Function *; {
    # ; Location: float.jl:399
    #         vmulsd  xmm0, xmm1, xmm0
    # ;}
    #         pop     rbp
    #         ret
    #         nop     dword ptr [rax + rax]
    # ;}
