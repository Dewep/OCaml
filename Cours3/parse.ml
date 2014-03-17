
let test_base = function
    | 2 -> print_endline "Base 2"
    | 8 -> print_endline "Base 8" 
    | 10 -> print_endline "Base 10" 
    | 16 -> print_endline "Base 16"
    | _ -> failwith("./parse [-obase (2|8|10|16)] [inputfile]")

let test_file = function
    | "" -> failwith("./parse [-obase (2|8|10|16)] [inputfile]")
    | s -> print_endline s

let base = ref 10
let file = ref ""

let () = Arg.parse [("-obase", Arg.Set_int base, "Set the output base (2|8|10|16).")] (function s -> file := s) "Usage :" ;
test_file !file;
test_base !base;
