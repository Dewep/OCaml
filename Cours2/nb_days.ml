let nb_days annee = function
  | Jan -> 31
  | Feb ->
    if is_bissextile annee == true
      then 29
      else 28
  | Mar -> 31
  | Apr -> 30
  | May -> 31
  | Jun -> 30
  | Jul -> 31
  | Aug -> 31
  | Sep -> 30
  | Oct -> 31
  | Nov -> 30
  | Dec -> 31
