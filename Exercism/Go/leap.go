// Package leap should have a package comment that summarizes what it's about.
// https://golang.org/doc/effective_go.html#commentary
package leap

// IsLeapYear should have a comment documenting it.
func IsLeapYear(year int) bool {
	// Start with a false statement
	var leapYear = false;
	// Check to see if it's divisible by 4
	if year % 4 == 0 {
		// If so, check to see if it's divisible by 100
		if year % 100 == 0 {
			// If so, check to see if it's divisible by 400
			if year % 400 == 0 {
				// If so, that year is a leap year!
				leapYear = true
			} // Otherwise, just leave the statement false
		} else {
			// If it's not divisible by 100, then it is a leap year!
			leapYear = true
		}
	}
	return leapYear
}