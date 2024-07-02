module Main exposing (..)

import Html exposing (text)

bubbleSort : List Int -> List Int
bubbleSort list =
    let
        swap i j l =
            List.indexedMap (\idx x -> if idx == i then List.Extra.getAt j l |> Maybe.withDefault x else if idx == j then List.Extra.getAt i l |> Maybe.withDefault x else x) l

        sortHelper l i =
            if i == List.length l - 1 then
                l
            else
                sortHelper (if (List.Extra.getAt i l |> Maybe.withDefault 0) > (List.Extra.getAt (i + 1) l |> Maybe.withDefault 0) then swap i (i + 1) l else l) (i + 1)
    in
    if List.length list <= 1 then
        list
    else
        sortHelper (bubbleSort (List.drop 1 list)) 0

main =
    let
        arr = [64, 34, 25, 12, 22, 11, 90]
        sorted = bubbleSort arr
    in
    text ("Sorted array: " ++ (String.join ", " (List.map String.fromInt sorted)))
