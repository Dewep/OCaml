let rec iter fct = function
  | [] -> ()
  | head::next ->
    begin
      fct head;
      iter fct next
    end
