let next_nday nb month year =
  if (nb == nb_days year month)
  then
    (1, true)
  else
    (nb + 1, false)
