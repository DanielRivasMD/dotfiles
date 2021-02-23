---
syntax: rust
---

//////////////////////////////////////////////////
// Option<T> { None, Some(T), }
//////////////////////////////////////////////////

// function
fn get_an_optional_value() -> Option<&'static str> {

    // if the optional value is not empty
    if false {
        return Some("success variable");
    }

    // else
    None
}

// match
let x;
match get_an_optional_value() {
    Some(v) => x = v, // if Some("success variable"), set x to "success variable"
    None => panic!("panicing"), // if None, panic without any message
}

// unwrap
let x = get_an_optional_value().unwrap();

//////////////////////////////////////////////////
// Result<T, E> { Ok(T), Err(E), }
//////////////////////////////////////////////////

// function
fn function_with_error() -> Result<u64, String> {

    //if error happens
    if true {
        return Err("error message".to_string());
    }

    // else, return valid output
    Ok(255)
}

// match
let x;
match function_with_error() {
    Ok(v) => x = v, // if Ok(255), set x to 255
    Err(e) => panic!(e), // if Err("error message"), panic with error message "error message"
}

// unwrap
let x = function_with_error().unwrap();

//////////////////////////////////////////////////
