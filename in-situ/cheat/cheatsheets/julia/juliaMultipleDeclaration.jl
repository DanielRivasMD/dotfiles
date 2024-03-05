---
syntax: julia
---

#  No overhead metaprogramming declaration
for x = [:A1, :A2, :A3, :A4, :A5]
  @eval $x = Array{Float64, 2}(undef, 10, 10)
end

#  Dinamic name generation
for x in [Symbol("A", i) for i = 1:10]
  @eval $x = Array{Float64, 2}(undef, 10, 10)
end
