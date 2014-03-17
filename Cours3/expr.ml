type expression =
    | Sum of expression * expression
    | Sub of expression * expression
    | Mul of expression * expression
    | Div of expression * expression
    | Mod of expression * expression
    | Val of int

let upu = Sum(Val(1), Val(1))
let upupu = Sum(Val(1), Sum(Val(1), Val(1)))
(* 1+2x3 *) let updft = Sum(Val(1), Mul(Val(2), Val(3)))
(* (1-2)x3/4 *) let tototo = Div(Mul(Sub(Val(1), Val(2)), Val(3)), Val(4))

(*
        (1+2)*3:
                *
        +               3
    1       2

        1+2*3:
                +
        1               *
                    2       3
*)
