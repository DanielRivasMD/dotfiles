---
syntax: rust
---

// initialize with macro
let a: vec<i32> = vec::new();

// populate
let mut b: vec<i32> = vec<i32> = vec![1, 2, 3, 4];

// re-assign value
b[2] = 54;

// add on to vector
b.push(5);

// pop off last value
b.pop();

// get slice
let slice: &[i32] = &numbers[1..3];
println!("slice: {:?}", slice);

// loop through vector values
for x in numbers.iter() {
  println!("number: {}", x);
}

// loop & mutate values
for x in numbers.iter_mut() {
  *x *= 2;
}
