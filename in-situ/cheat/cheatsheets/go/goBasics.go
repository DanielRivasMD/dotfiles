---
syntax: go
---


// Single line comment
/* Multi-
 line comment */

 /* A build tag is a line comment starting with // +build
  and can be execute by go build -tags="foo bar" command.
  Build tags are placed before the package clause near or at the top of the file
  followed by a blank line or other line comments. */
// +build prod, dev, test

// A package clause starts every source file.
// Main is a special name declaring an executable rather than a library.
package main

// Import declaration declares library packages referenced in this file.
import (
	"fmt"       // A package in the Go standard library.
	"io/ioutil" // Implements some I/O utility functions.
	m "math"    // Math library with local alias m.
	"net/http"  // Yes, a web server!
	"os"        // OS functions like working with the file system
	"strconv"   // String conversions.
)

// A function definition. Main is special. It is the entry point for the
// executable program. Love it or hate it, Go uses brace brackets.
func main() {
	// Println outputs a line to stdout.
	// It comes from the package fmt.
	fmt.Println("Hello world!")

	// Call another function within this package.
	beyondHello()
}
