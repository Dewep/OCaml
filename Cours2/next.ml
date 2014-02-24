let next (day, num, month, year) =
  if (next_nday num month year) = (1, true) then
    if (month == Dec) then
      (next_day day, 1, next_month month, year + 1)
    else
      (next_day day, 1, next_month month, year)
  else
    (next_day day, num + 1, month, year)
