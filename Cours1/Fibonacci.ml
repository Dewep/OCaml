let fibonacci n = let rec fibonacci_aux x y z =
    if z <= 0 then 0
    else if z <= 1 then y
    else fibonacci_aux (y) (x + y) (z - 1)
  in fibonacci_aux 0 1 n


let fibonacci n = let rec fibonacci_aux nm2 nm1 na nm =
  match na with
    | _ when nm < 0 -> failwith("Invalid number")
    | 0 -> 0
    | 1 -> 1
    | nm -> nm2 + nm1
    | _ -> fibonacci_aux nm1 (nm1 + nm2) (na + 1) nm
  in fibonacci_aux 0 1 2 n
