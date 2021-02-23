// src/example.rs
#[macro_use]
extern crate icecream;

mod a_module {
    fn some_function() {
        let x = Some(99);
        ic!();
        ic!(x);
        ic!(x.unwrap() + 1);
        ice!();
    }
}
