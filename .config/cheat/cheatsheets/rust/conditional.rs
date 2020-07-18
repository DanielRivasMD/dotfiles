---
syntax: rust
---

// if - else
if age > 21 {
  println!("over 21");
} else if age < 21 {
  println!("under 21");
} else {
  println!("exactly 21");
}

// if let
let old_enough = if age > 21 {
  true
} else {
  false
};
