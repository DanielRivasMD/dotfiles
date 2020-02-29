---
syntax: rust
---

// infinite loop
loop {
  println!("{}", "hello world!");
}

// finite loop
let mut i = 0;
let x = loop {
  if i == 10 
    break i
  i += 1;
};

// while
let mut j = 0;
while j < 10 {
  j += 1;
}

// for loop - for (i = 0; i < 10; ++i)
for i in 0..10 {
  println!("{}", i);
}

// iterations
let nums = vec![1, 2, 3, 4, 5];
for num in nums {
  println!("{}", num);
}
