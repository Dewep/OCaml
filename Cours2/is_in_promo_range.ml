let rec is_in_promo_range (prenom, nom, annee, close) range1 range2 =
  if range1 > range2 then false
  else if is_in_promo (prenom, nom, annee, close) range1 then true
  else is_in_promo_range (prenom, nom, annee, close) (range1 + 1) range2
