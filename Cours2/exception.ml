let list_mul l =
  let rec list_mul_impl = function
    | [] -> 1
    | h::t -> if h <> 0 then h * list_mul_impl t
      else raise (Invalid_argument("0 found"))
  in
  try
    list_mul_impl l
  with
    | Invalid_argument(s) -> begin print_string s; 0 end
    | e -> raise e
