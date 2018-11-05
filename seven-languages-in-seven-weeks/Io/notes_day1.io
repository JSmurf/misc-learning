// These are some things I felt should be noted about Io
# Note that you can use whichever kinds of comments

// Everything in Io is an object, which have slots and take messages

// Basic operations are messages, in the following code:

"Hello, World!" print

// print is the message that is being sent to our object, the string "Hello, World!"

// The Day 1 console examples have you creating new objects:

Vehicle := Object clone

// Here, the object Vehicle is being passed the message "assign" or :=, and the argument to that is actually the result of the message clone being sent to Object

Vehicle description := "Something to take you places"

// Then we assign a string to the slot description

Vehicle description = "Something to take you far away"
Vehicle nonExistantSlot = "This won't work"

// The = assignment operator will throw an error if the slot doesn't exist, while := creates a new one for us

// Methods are objects that contain another object and a message
// Therefore, methods can be assigned to slots

// Io has lists, which are like arrays, and maps, which are like hash tables

// Io is strongly typed
true and "true" # returns false
// 0 is true
