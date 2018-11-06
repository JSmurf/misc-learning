// Create a new object called "person"
person := Object clone
// Open our try block
e := try(
    // Add a description to the person
    person description = "this is a description"
)
// Write out if this doesn't work
e catch(Exception,
    writeln("this is an exception")
)
// Write out the description
writeln(person description)

// You can play aroung with this by changing the assignment from '=' to ':=' 
// As it is now, it'll throw the normal exception, as well as our new one
// But if you change the assignment, it will only print our description
