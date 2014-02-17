let fibonacci n = let rec fibonacci_aux nm2 nm1 na nm =
  match na with
    | x when nm < 0 -> failwith("Invalid number")
    | x when nm = 0 -> 0
    | x when nm = 1 -> 1
    | x when x = nm -> nm2 + nm1
    | _ -> fibonacci_aux nm1 (nm1 + nm2) (na + 1) nm
  in fibonacci_aux 0 1 2 n
