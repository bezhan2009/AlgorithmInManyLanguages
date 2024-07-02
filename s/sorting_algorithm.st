"Пример сортировки пузырьком на Smalltalk"

| arr temp n |
arr := #(5 3 8 4 2).
n := arr size.

(1 to: n - 1) do: [ :i |
    (1 to: n - i) do: [ :j |
        (arr at: j) > (arr at: j + 1) ifTrue: [
            temp := arr at: j.
            arr at: j put: (arr at: j + 1).
            arr at: j + 1 put: temp
        ]
    ]
].

arr inspect.
