open! Base

let rec naive n = match n with
  | 0 -> 0
  | 1 -> 1
  | n -> naive (n - 1) + naive (n - 2);;

(* This one uses tail recursion *)

let optimized n = 
  let rec helper a b n = match n with
    | 0 -> a
    | 1 -> b
    | n -> helper b (a + b) (n - 1)
  in helper 0 1 n;;

(* Writing basic tests using janestreet's test lints *)

let%test "Testing fibonacci..." =
  Int.equal (naive 5) 5

let%test "Testing fibonacci..." =
  Int.equal (optimized 5) 5

let%test "Testing fibonacci..." =
  Int.equal (naive 28) 317811

let%test "Testing fibonacci..." =
  Int.equal (optimized 28) 317811

let%test "Testing fibonacci..." =
  Int.equal (naive 30) 832040

let%test "Testing fibonacci..." =
  Int.equal (optimized 30) 832040

let%test "Testing fibonacci..." =
  Int.equal (naive 35) 9227465

let%test "Testing fibonacci..." =
  Int.equal (optimized 35) 9227465