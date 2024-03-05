---
syntax: rust
---

//////////////
// 2. Types //
//////////////

// Struct
struct Point {
    x: i32,
    y: i32,
}

let origin: Point = Point { x: 0, y: 0 };

// A struct with unnamed fields, called a ‘tuple struct’
struct Point2(i32, i32);

let origin2 = Point2(0, 0);

// Basic C-like enum
enum Direction {
    Left,
    Right,
    Up,
    Down,
}

let up = Direction::Up;

// Enum with fields
enum OptionalI32 {
    AnI32(i32),
    Nothing,
}

let two: OptionalI32 = OptionalI32::AnI32(2);
let nothing = OptionalI32::Nothing;

// Generics //

struct Foo<T> { bar: T }

// This is defined in the standard library as `Option`
enum Optional<T> {
    SomeVal(T),
    NoVal,
}

// Methods //

impl<T> Foo<T> {
    // Methods take an explicit `self` parameter
    fn bar(&self) -> &T { // self is borrowed
        &self.bar
    }
    fn bar_mut(&mut self) -> &mut T { // self is mutably borrowed
        &mut self.bar
    }
    fn into_bar(self) -> T { // here self is consumed
        self.bar
    }
}

let a_foo = Foo { bar: 1 };
println!("{}", a_foo.bar()); // 1

// Traits (known as interfaces or typeclasses in other languages) //

trait Frobnicate<T> {
    fn frobnicate(self) -> Option<T>;
}

impl<T> Frobnicate<T> for Foo<T> {
    fn frobnicate(self) -> Option<T> {
        Some(self.bar)
    }
}

let another_foo = Foo { bar: 1 };
println!("{:?}", another_foo.frobnicate()); // Some(1)
