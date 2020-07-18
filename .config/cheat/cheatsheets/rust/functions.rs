---
syntax: rust
---

fn inc(n1: &mut i32) {
  *n1 = *n1 + 1;
}

fn get_length(s: &str) -> usize {
  s.chars().count()
}

fn borrow_name(s: &String) {
  print!("{}", s);
}

fn add(n1: i32, n2: i32) -> i32 {
  n1 + n2
}