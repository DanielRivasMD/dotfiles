---
syntax: julia
---

# reflexive
replace!(df[!, Symbol(c)], missing => 0)

# explicit replace
df[:, Symbol(c)] = replace(df[:, Symbol(c)], missing => 0)

# by index
df[:, Symbol(c)][ismissing.(df[:, Symbol(c)])] .= 0

# coalesce
df[:, Symbol(c)] = coalesce.(df[:, Symbol(c)], 0)

# force cast cols
disallowmissing!(df, Symbol(c))