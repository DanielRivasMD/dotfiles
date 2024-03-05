---
syntax: rust
---

/////////////////////
// 4. Control flow //
/////////////////////

// `for` loops/iteration
let array = [1, 2, 3];
for i in array.iter() {
    println!("{}", i);
}

// Ranges
for i in 0u32..10 {
    print!("{} ", i);
}
println!("");
// prints `0 1 2 3 4 5 6 7 8 9 `

// `if`
if 1 == 1 {
    println!("Maths is working!");
} else {
    println!("Oh no...");
}

// `if` as expression
let value = if true {
    "good"
} else {
    "bad"
};

// `while` loop
while 1 == 1 {
    println!("The universe is operating normally.");
    // break statement gets out of the while loop.
    //  It avoids useless iterations.
    break
}

// Infinite loop
loop {
    println!("Hello!");
    // break statement gets out of the loop
    break
}
