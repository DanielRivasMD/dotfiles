---
syntax: julia
---

#  No overhead metaprogramming declaration
for x = [:A1,:A2,:A3,:A4,:A5]
  @eval $x = Array(Float64,10,10)
end

#  Dinamic name generation
for x in [symbol("A"*string(i)) for i=1:100]
  @eval $x = Array(Float64,10,10)
end
