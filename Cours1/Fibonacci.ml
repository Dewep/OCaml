let fibonacci n = let rec fibonacci_aux nm2 nm1 na nm =
  if nm < 0 then failwith("Invalid number")
  else if nm == 0 then 0
  else if na >= nm then nm2 + nm1
  else fibonacci_aux nm1 (nm1 + nm2) (na + 1) nm
  in fibonacci_aux 0 1 2 n
