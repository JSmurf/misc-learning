// Package space contains a method pertaining to space ages
package space

type Planet string

// Number of seconds in a year on Earth
var earthSeconds float64 = 31557600
// The number of Earth years per year on each planet (in order)
var orbitalPeriods = map[Planet]float64 {
	"Mercury" : 0.2408467,
	"Venus" : 0.61519726,
	"Earth" : 1.0,
	"Mars" : 1.8808158,
	"Jupiter" : 11.862615,
	"Saturn" : 29.447498,
	"Uranus" : 84.016846,
	"Neptune" : 164.79132,
}
// Age takes a number of seconds, as well as the name of a planet, and returns the age of a person who is that many seconds old in planet's years
func Age(seconds float64, planet Planet) float64{
	// Calculate total seconds in given planet's year
	var orbitalPeriodInSeconds float64 = orbitalPeriods[planet] * earthSeconds
	// Divide age in seconds by said amount of seconds
	return seconds / orbitalPeriodInSeconds
}
