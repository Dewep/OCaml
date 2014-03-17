
type expression =
    | Sum of expression * expression
    | Sub of expression * expression
    | Mul of expression * expression
    | Div of expression * expression
    | Mod of expression * expression
    | Val of int

let expr = Div(Mul(Sub(Val(1), Val(2)), Val(3)), Val(4))

let rec compile_expr = function
    | Sum(expr1, expr2) -> String.concat "" ["("; (compile_expr expr1); "+"; (compile_expr expr2); ")"]
    | Sub(expr1, expr2) -> String.concat "" ["("; (compile_expr expr1); "-"; (compile_expr expr2); ")"]
    | Mul(expr1, expr2) -> String.concat "" ["("; (compile_expr expr1); "*"; (compile_expr expr2); ")"]
    | Div(expr1, expr2) -> String.concat "" ["("; (compile_expr expr1); "/"; (compile_expr expr2); ")"]
    | Mod(expr1, expr2) -> String.concat "" ["("; (compile_expr expr1); "%"; (compile_expr expr2); ")"]
    | Val(value) -> string_of_int value

let () = print_endline (compile_expr expr)
