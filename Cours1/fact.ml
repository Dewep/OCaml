let fact n = let rec fact_aux x y =
  if y < 0 then 0
  else match y with
    | 0 -> 1
    | 1 -> x
    | _ -> fact_aux (x * y) (y - 1)
  in fact_aux n (n - 1)


let fact n = let rec fact_aux x y =
    if y < 0 then 0
    else if y = 0 then 1
    else if y = 1 then x
    else fact_aux (x * y) (y - 1)
  in fact_aux n (n - 1)


let fact n = let rec fact_aux x = function
    | -1 -> 0
    | 0 -> 1
    | 1 -> x
    | y -> fact_aux (x * y) (y - 1)
  in fact_aux n (n - 1)


let rec fact n = if n == 1 then 1 else n * fact(n - 1);;
