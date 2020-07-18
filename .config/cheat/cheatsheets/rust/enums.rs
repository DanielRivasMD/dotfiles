---
syntax: rust
---

// explicit values
enum Number {
  One = 1,
  Five = 5,
  Ten = 0xA
}

// define simple enum
enum Color {
  Red,
  Green,
  Blue,
  Orange,
  Custom(String),                                                    // tuple struct style
  Coord{ x: i32, y: i32 }                                            // classic struct style
}

let favorite: Color = Color::Green;
let custom: Color = Color::Custom("pink".to_string());

// check with if let
if let Color::Green = favorite {
  println!("favorite color is green");
}

// check with match
match favorite {
  Color::Green => println!("favorite color is green"),
  Color::Blue => println!("favorite color is blue"),
  _ => {}
}

// use variable
match custom {
  Color::Custom(color) => println!("custom color: {}", color),
  _ => {}
}