---
syntax: rust
---

// with non-primitives, if you assign another variable to a piece of 
// data, the first variable will no longer hold that value. you'll 
// need to use a reference (&) to point to the resource

// vector
let vec1 = vec![1, 2, 3];
let vec2 = &vec1;
