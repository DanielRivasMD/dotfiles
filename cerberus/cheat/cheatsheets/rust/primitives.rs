---
syntax: rust
---

// constant
const MAX_POINTS: u32 = 100_000;                                     // CONSTANTS are CAPITALIZE

// declaration
let x = 5;
let x: i32 = 150;                                                    // explicit
let y: f64 = 54.6;                                                   // explicit
let t = true;
let f: bool = false;                                                 // explicit

// mutable
let mut x = 5;
x = 10;
let mut y: f64 = 63.3;                                               // explicit
y = 424.6;

// shadowing
let x = 5;
let x = x * 2;                                                       // use `let` again

// array
let a = [1, 2, 3, 4, 5];
let a: [i32; 5] = [1, 2, 3, 4, 5];                                   // explicit
let a = [3; 5];                                                      // repeat values
let element = a[index];                                              // accesing element in array

// tuples
let tup = (500, 6.4, 1);
let tup: (i32, f64, u8) = (500, 6.4, 1);                             // explicit
let six_point_four = x.1;                                            // accesing element in tuple
let (x, y, z) = tup;                                                 // destructuring

                                                                     // data types
                                                                     // length  | signed | unsigned
                                                                     // ===========================
                                                                     //   8-bit |    i8  |     u8
                                                                     //  16-bit |   i16  |    u16
                                                                     //  32-bit |   i32  |    u32
                                                                     //  64-bit |   i64  |    u64
                                                                     // 128-bit |  i128  |   u128
                                                                     //    arch | isize  |  usize