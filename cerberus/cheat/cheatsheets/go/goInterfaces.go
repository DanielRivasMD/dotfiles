---
syntax: go
---

// Define Stringer as an interface type with one method, String.
type Stringer interface {
	String() string
}

// Define pair as a struct with two fields, ints named x and y.
type pair struct {
	x, y int
}

// Define a method on type pair. Pair now implements Stringer because Pair has defined all the methods in the interface.
func (p pair) String() string { // p is called the "receiver"
	// Sprintf is another public function in package fmt.
	// Dot syntax references fields of p.
	return fmt.Sprintf("(%d, %d)", p.x, p.y)
}

func learnInterfaces() {
	// Brace syntax is a "struct literal". It evaluates to an initialized
	// struct. The := syntax declares and initializes p to this struct.
	p := pair{3, 4}
	fmt.Println(p.String()) // Call String method of p, of type pair.
	var i Stringer          // Declare i of interface type Stringer.
	i = p                   // Valid because pair implements Stringer
	// Call String method of i, of type Stringer. Output same as above.
	fmt.Println(i.String())

	// Functions in the fmt package call the String method to ask an object
	// for a printable representation of itself.
	fmt.Println(p) // Output same as above. Println calls String method.
	fmt.Println(i) // Output same as above.

	learnVariadicParams("great", "learning", "here!")
}
