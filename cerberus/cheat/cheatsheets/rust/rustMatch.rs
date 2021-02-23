---
syntax: rust
---

// match
match age {
  21 => println!("age is 21"),                                       // option
  22 => println!("age is 22"),                                       // option
  23 | 24 => println!("age is 23 or 24"),                            // OR
  25..=28 => println!("age is between 25 and 28"),                   // range
  n if n < 5 => println!("age is less than 5"),                      // less than
  n if n > 50 => println!("age is greater than 50"),                 // more than
  _ => println!("age is something else")                             // exhaustive
}

/////////////////////////
// 3. Pattern matching //
/////////////////////////

let foo = OptionalI32::AnI32(1);
match foo {
    OptionalI32::AnI32(n) => println!("it’s an i32: {}", n),
    OptionalI32::Nothing  => println!("it’s nothing!"),
}

// Advanced pattern matching
struct FooBar { x: i32, y: OptionalI32 }
let bar = FooBar { x: 15, y: OptionalI32::AnI32(32) };

match bar {
    FooBar { x: 0, y: OptionalI32::AnI32(0) } =>
        println!("The numbers are zero!"),
    FooBar { x: n, y: OptionalI32::AnI32(m) } if n == m =>
        println!("The numbers are the same"),
    FooBar { x: n, y: OptionalI32::AnI32(m) } =>
        println!("Different numbers: {} {}", n, m),
    FooBar { x: _, y: OptionalI32::Nothing } =>
        println!("The second number is Nothing!"),
}
