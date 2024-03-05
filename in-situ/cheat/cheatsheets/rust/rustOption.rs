---
syntax: rust
---

// built-in Option<T> enum
let mut age: Option<i32> = None;
age = Some(18);

match age {
  Some(age) => {
    if age >= 21 {
      println!("can have beer");
    } else {
      println!("can't have beer, only {}", age);
    }
  },
  None => println!("unknown age")
}