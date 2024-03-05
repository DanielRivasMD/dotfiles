---
syntax: go
---

func learnErrorHandling() {
	// ", ok" idiom used to tell if something worked or not.
	m := map[int]string{3: "three", 4: "four"}
	if x, ok := m[1]; !ok { // ok will be false because 1 is not in the map.
		fmt.Println("no one there")
	} else {
		fmt.Print(x) // x would be the value, if it were in the map.
	}
	// An error value communicates not just "ok" but more about the problem.
	if _, err := strconv.Atoi("non-int"); err != nil { // _ discards value
		// prints 'strconv.ParseInt: parsing "non-int": invalid syntax'
		fmt.Println(err)
	}
	// We'll revisit interfaces a little later. Meanwhile,
	learnConcurrency()
}
