---
syntax: rust
---

// collect arguments
let args: Vec<String> = env::args().collect();
let command = args[1].clone();