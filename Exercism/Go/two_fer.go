// Package twofer provides a method for injecting an input string into a sentence
package twofer

// ShareWith injects the input name into a sentence
func ShareWith(name string) string {
	// If name is blank, set it to "you" instead
	if name == "" {
		name = "you"
	}
	// Create a sentence to return
	var sentence string = "One for " + name + ", one for me."
	return sentence
}
