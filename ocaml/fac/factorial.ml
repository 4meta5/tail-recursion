open! Base

let rec naive (n: int) : int = match n with
  | 0 -> 1
  | n -> n * (naive (n - 1));;

(* This one uses tail recursion *)

let optimized n = 
  let rec helper acc n = match n with
    | 0 -> acc
    | 1 -> acc
    | _ -> helper (acc * n) (n - 1)
  in helper 1 n;;

(* Writing basic tests using janestreet's test lints *)

let%test "Testing factorial..." =
  Int.equal (optimized 5) 120

let%test "Testing factorial..." =
  Int.equal (naive 5) 120

let%test "Testing factorial..." =
  Int.equal (optimized 10) 3628800

let%test "Testing factorial..." =
  Int.equal (naive 10) 3628800

let%test "Testing factorial..." =
  Int.equal (optimized 12) 479001600

let%test "Testing factorial..." =
  Int.equal (naive 12) 479001600