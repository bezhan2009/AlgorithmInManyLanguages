let bubbleSort (arr: int[]) =
    let n = arr.Length
    for i in 0 .. n-1 do
        for j in 0 .. n-i-2 do
            if arr.[j] > arr.[j+1] then
                let temp = arr.[j]
                arr.[j] <- arr.[j+1]
                arr.[j+1] <- temp
    arr

let arr = [|64; 34; 25; 12; 22; 11; 90|]
let sorted = bubbleSort arr
printfn "Sorted array: %A" sorted
