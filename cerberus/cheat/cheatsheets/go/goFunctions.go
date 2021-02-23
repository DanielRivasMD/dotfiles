---
syntax: go
---

// Functions have parameters in parentheses.
// If there are no parameters, empty parentheses are still required.
func beyondHello() {
	var x int // Variable declaration. Variables must be declared before use.
	x = 3     // Variable assignment.
	// "Short" declarations use := to infer the type, declare, and assign.
	y := 4
	sum, prod := learnMultiple(x, y)        // Function returns two values.
	fmt.Println("sum:", sum, "prod:", prod) // Simple output.
	learnTypes()                            // < y minutes, learn more!
}

/* <- multiline comment
Functions can have parameters and (multiple!) return values.
Here `x`, `y` are the arguments and `sum`, `prod` is the signature (what's returned).
Note that `x` and `sum` receive the type `int`.
*/
func learnMultiple(x, y int) (sum, prod int) {
	return x + y, x * y // Return two values.
}

// It is possible, unlike in many other languages for functions in go
// to have named return values.
// Assigning a name to the type being returned in the function declaration line
// allows us to easily return from multiple points in a function as well as to
// only use the return keyword, without anything further.
func learnNamedReturns(x, y int) (z int) {
	z = x * y
	return // z is implicit here, because we named it earlier.
}

func learnFunctionFactory() {
	// Next two are equivalent, with second being more practical
	fmt.Println(sentenceFactory("summer")("A beautiful", "day!"))

	d := sentenceFactory("summer")
	fmt.Println(d("A beautiful", "day!"))
	fmt.Println(d("A lazy", "afternoon!"))
}

// Decorators are common in other languages. Same can be done in Go
// with function literals that accept arguments.
func sentenceFactory(mystring string) func(before, after string) string {
	return func(before, after string) string {
		return fmt.Sprintf("%s %s %s", before, mystring, after) // new string
	}
}

// Functions can have variadic parameters.
func learnVariadicParams(myStrings ...interface{}) {
	// Iterate each value of the variadic.
	// The underbar here is ignoring the index argument of the array.
	for _, param := range myStrings {
		fmt.Println("param:", param)
	}

	// Pass variadic value as a variadic parameter.
	fmt.Println("params:", fmt.Sprintln(myStrings...))

	learnErrorHandling()
}
