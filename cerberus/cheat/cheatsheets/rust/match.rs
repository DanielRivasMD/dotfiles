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