,>++++++[-<-------->]     Read first number and initialize pointer
[                         Outer loop for each number
    <[->+>+<<]             Move current number to cell 1 and duplicate to cell 2
    >>[-<<+>>]             Move back to the current number
    <[                     Inner loop for comparing and shifting
        [->+>+<<]             Move previous number to cell 3 and duplicate to cell 4
        [->>>+<<<]             Move to current number and move back to cell 4
        >>>[                    If previous number is greater, swap
            [->+>+<<]             Move current number to cell 1 and duplicate to cell 2
            >[-<<+>>]             Move back to the current number
            <-                     Move back to cell 4
        ]<<<-                   Move back to cell 3
        <+>                     Move to the previous number
    ]<<[-]<                 End of inner loop and move back to the current number
    >>>[                     Move to the current number and move back to cell 2
        [-]<                    Clean up cell 2
        <++++++++++[->+++++++<]>[-<+>]    Increment and move to the next number
    ]<<.                    Print current number
    >.                      Print separator
    >++++++++++[-<+++++++>]<.    Print the end of the array
    ,>++++++++++[-<++++++++++>]<. Print the next number and end of the array
]
