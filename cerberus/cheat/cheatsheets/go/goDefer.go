---
syntax: go
---

func learnDefer() (ok bool) {
	// A defer statement pushes a function call onto a list. The list of saved
	// calls is executed AFTER the surrounding function returns.
	defer fmt.Println("deferred statements execute in reverse (LIFO) order.")
	defer fmt.Println("\nThis line is being printed first because")
	// Defer is commonly used to close a file, so the function closing the
	// file stays close to the function opening the file.
	return true
}
