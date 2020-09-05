open Base
(* This is just for learning purposes

    In practice, use [List.sort] *)

let rec naive list = match list with
    | [] -> []
    | pivot :: rest -> let smaller, larger = List.partition (fun n -> n < pivot) rest
               in naive smaller @ (pivot :: naive larger)
;;

(* This implementation uses a continuation monad *)

let rec optimized list =
    let rec helper list cont =
        match list with
        | [] -> cont []
        | n :: [] -> cont [n]
        | pivot :: rest ->
            let smaller, larger = List.partition (fun n -> n < pivot) rest in
            helper smaller (fun sorted_left ->
            helper larger (fun sorted_right ->
            cont (sorted_left @ [pivot] @ sorted_right)))
    in helper list (fun x -> x)
;;

(* Writing basic tests using janestreet's test lints *)

let%test "Testing quicksort..." =
  List.equal (naive [2; 6; 3; 8; 5; 1; 9; 4]) [1; 2; 3; 4; 5; 6; 7; 8; 9]

let%test "Testing quicksort..." =
  List.equal (optimized [2; 6; 3; 8; 5; 1; 9; 4]) [1; 2; 3; 4; 5; 6; 7; 8; 9]