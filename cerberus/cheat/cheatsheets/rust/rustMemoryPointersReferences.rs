---
syntax: rust
---

// with non-primitives, if you assign another variable to a piece of 
// data, the first variable will no longer hold that value. you'll 
// need to use a reference (&) to point to the resource

// vector
let vec1 = vec![1, 2, 3];
let vec2 = &vec1;

/////////////////////////////////
// 5. Memory safety & pointers //
/////////////////////////////////

// Owned pointer – only one thing can ‘own’ this pointer at a time
// This means that when the `Box` leaves its scope, it can be automatically deallocated safely.
let mut mine: Box<i32> = Box::new(3);
*mine = 5; // dereference
// Here, `now_its_mine` takes ownership of `mine`. In other words, `mine` is moved.
let mut now_its_mine = mine;
*now_its_mine += 2;

println!("{}", now_its_mine); // 7
// println!("{}", mine); // this would not compile because `now_its_mine` now owns the pointer

// Reference – an immutable pointer that refers to other data
// When a reference is taken to a value, we say that the value has been ‘borrowed’.
// While a value is borrowed immutably, it cannot be mutated or moved.
// A borrow is active until the last use of the borrowing variable.
let mut var = 4;
var = 3;
let ref_var: &i32 = &var;

println!("{}", var); // Unlike `mine`, `var` can still be used
println!("{}", *ref_var);
// var = 5; // this would not compile because `var` is borrowed
// *ref_var = 6; // this would not either, because `ref_var` is an immutable reference
ref_var; // no-op, but counts as a use and keeps the borrow active
var = 2; // ref_var is no longer used after the line above, so the borrow has ended

// Mutable reference
// While a value is mutably borrowed, it cannot be accessed at all.
let mut var2 = 4;
let ref_var2: &mut i32 = &mut var2;
*ref_var2 += 2;         // '*' is used to point to the mutably borrowed var2

println!("{}", *ref_var2); // 6 , // var2 would not compile.
// ref_var2 is of type &mut i32, so stores a reference to an i32, not the value.
// var2 = 2; // this would not compile because `var2` is borrowed.
ref_var2; // no-op, but counts as a use and keeps the borrow active until here
