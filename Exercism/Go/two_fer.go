// This is a "stub" file.  It's a little start on your solution.
// It's not a complete solution though; you have to write some code.

// Package twofer should have a package comment that summarizes what it's about.
// https://golang.org/doc/effective_go.html#commentary
package twofer

// Function that returns a sentence made from an input string
func ShareWith(name string) string {
	// If name is blank, set it to "you" instead
	if name == "" {
		name = "you"
	}
	// Create a sentence to return
	var sentence string = "One for " + name + ", one for me."
	return sentence
}
