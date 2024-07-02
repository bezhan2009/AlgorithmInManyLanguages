bubble-sort: function [arr] [
    swapped: true
    while [swapped] [
        swapped: false
        foreach i range (length? arr) - 1 [
            if arr/:i > arr/:i + 1 [
                swap arr i i + 1
                swapped: true
            ]
        ]
    ]
    arr
]

swap: function [arr i j] [
    temp: arr/:i
    arr/:i: arr/:j
    arr/:j: temp
]

arr: [64 34 25 12 22 11 90]
print bubble-sort arr
