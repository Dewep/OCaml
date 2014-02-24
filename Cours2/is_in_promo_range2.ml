let rec is_in_promo_range etudiant range1 range2 =
  (range1 <= range2)
  && ( (is_in_promo etudiant range1)
    || is_in_promo_range etudiant (range1 + 1) range2)
