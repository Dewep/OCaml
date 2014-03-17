type expression =
    | Sum of expression * expression
    | Sub of expression * expression
    | Mul of expression * expression
    | Div of expression * expression
    | Mod of expression * expression
    | Val of int

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
