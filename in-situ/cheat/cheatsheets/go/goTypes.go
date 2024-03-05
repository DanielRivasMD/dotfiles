---
syntax: go
---

// Some built-in types and literals.
func learnTypes() {
	// Short declaration usually gives you what you want.
	str := "Learn Go!" // string type.

	s2 := `A "raw" string literal
can include line breaks.` // Same string type.

	// Non-ASCII literal. Go source is UTF-8.
	g := 'Σ' // rune type, an alias for int32, holds a unicode code point.

	f := 3.14195 // float64, an IEEE-754 64-bit floating point number.
	c := 3 + 4i  // complex128, represented internally with two float64's.

	// var syntax with initializers.
	var u uint = 7 // Unsigned, but implementation dependent size as with int.
	var pi float32 = 22. / 7

	// Conversion syntax with a short declaration.
	n := byte('\n') // byte is an alias for uint8.

	// Arrays have size fixed at compile time.
	var a4 [4]int           // An array of 4 ints, initialized to all 0.
	a5 := [...]int{3, 1, 5, 10, 100} // An array initialized with a fixed size of five
	// elements, with values 3, 1, 5, 10, and 100.

	// Arrays have value semantics.
	a4_cpy := a4            // a4_cpy is a copy of a4, two separate instances.
	a4_cpy[0] = 25          // Only a4_cpy is changed, a4 stays the same.
	fmt.Println(a4_cpy[0] == a4[0]) // false

	// Slices have dynamic size. Arrays and slices each have advantages
	// but use cases for slices are much more common.
	s3 := []int{4, 5, 9}    // Compare to a5. No ellipsis here.
	s4 := make([]int, 4)    // Allocates slice of 4 ints, initialized to all 0.
	var d2 [][]float64      // Declaration only, nothing allocated here.
	bs := []byte("a slice") // Type conversion syntax.

	// Slices (as well as maps and channels) have reference semantics.
	s3_cpy := s3            // Both variables point to the same instance.
	s3_cpy[0] = 0           // Which means both are updated.
	fmt.Println(s3_cpy[0] == s3[0]) // true	

	// Because they are dynamic, slices can be appended to on-demand.
	// To append elements to a slice, the built-in append() function is used.
	// First argument is a slice to which we are appending. Commonly,
	// the array variable is updated in place, as in example below.
	s := []int{1, 2, 3}		// Result is a slice of length 3.
	s = append(s, 4, 5, 6)	// Added 3 elements. Slice now has length of 6.
	fmt.Println(s) // Updated slice is now [1 2 3 4 5 6]

	// To append another slice, instead of list of atomic elements we can
	// pass a reference to a slice or a slice literal like this, with a
	// trailing ellipsis, meaning take a slice and unpack its elements,
	// appending them to slice s.
	s = append(s, []int{7, 8, 9}...) // Second argument is a slice literal.
	fmt.Println(s)	// Updated slice is now [1 2 3 4 5 6 7 8 9]

	p, q := learnMemory() // Declares p, q to be type pointer to int.
	fmt.Println(*p, *q)   // * follows a pointer. This prints two ints.

	// Maps are a dynamically growable associative array type, like the
	// hash or dictionary types of some other languages.
	m := map[string]int{"three": 3, "four": 4}
	m["one"] = 1

	// Unused variables are an error in Go.
	// The underscore lets you "use" a variable but discard its value.
	_, _, _, _, _, _, _, _, _, _ = str, s2, g, f, u, pi, n, a5, s4, bs
	// Usually you use it to ignore one of the return values of a function
	// For example, in a quick and dirty script you might ignore the
	// error value returned from os.Create, and expect that the file
	// will always be created.
	file, _ := os.Create("output.txt")
	fmt.Fprint(file, "This is how you write to a file, by the way")
	file.Close()
	
	// Output of course counts as using a variable.
	fmt.Println(s, c, a4, s3, d2, m)

	learnFlowControl() // Back in the flow.
}
