open! Base

let rec naive (n : int) : int =
  if n <= 1 then 1
  else n * (naive (n - 1));;

let rec naive2 (n: int) : int = match n with
  | 0 -> 1
  | n -> n * (naive2 (n - 1));;

(* This one uses tail recursion *)

let factorial n = 
  let rec helper acc n = if n <= 1 then acc else helper (acc * n) (n - 1)
    in helper 1 n;;

(* Writing basic tests using janestreet's test lints *)

let%test "Testing factorial..." =
  Int.equal (factorial 5) 120

let%test "Testing factorial..." =
  Int.equal (naive 5) 120

let%test "Testing naive2..." =
  Int.equal (naive2 5) 120

let%test "Testing factorial..." =
  Int.equal (factorial 10) 3628800

let%test "Testing factorial..." =
  Int.equal (naive 10) 3628800

let%test "Testing naive2..." =
  Int.equal (naive2 10) 3628800

let%test "Testing factorial..." =
  Int.equal (factorial 12) 479001600

let%test "Testing factorial..." =
    Int.equal (naive 12) 479001600

let%test "Testing naive2..." =
    Int.equal (naive2 12) 479001600