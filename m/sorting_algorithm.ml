let bubble_sort arr =
  let n = Array.length arr in
  for i = 0 to n - 1 do
    for j = 0 to n - i - 2 do
      if arr.(j) > arr.(j + 1) then
        let temp = arr.(j) in
        arr.(j) <- arr.(j + 1);
        arr.(j + 1) <- temp
    done
  done

let arr = [|64; 34; 25; 12; 22; 11; 90|] in
bubble_sort arr;
Array.iter (fun x -> print_int x; print_string " ") arr;
print_newline ()
