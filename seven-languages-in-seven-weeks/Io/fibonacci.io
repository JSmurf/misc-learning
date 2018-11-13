recursiveFibonacci := method(num,
    if(num <= 2, 1, recursiveFibonacci(num - 1) + recursiveFibonacci(num - 2))
)

iterativeFibonacci := method(num,
    a := 0;
    b := 0;
    c := 1;
    for(i, 2, num,
        a = b;
        b = c;
        c = a + b;
        )
    c
)

"Recursive: " println
for(i, 1, 20, recursiveFibonacci(i) println)
"Iterative: " println
for(i, 1, 20, iterativeFibonacci(i) println)
