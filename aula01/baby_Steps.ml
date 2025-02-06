(* let x = 7 + 2 ;;
Printf.printf "%d\n" x ;; *)


(* this wont work, x is a variable only availbe inside the expression *)
(* let x = 1 in x ;;
Printf.printf "%d\n" x ;;
(let y = 2 in x) + 1 ;;
Printf.printf "%d\n" y ;; *)

(* concatenation *)
let x = "A" ;;
let y = "B" ;;
let z = x ^ y ;;
Printf.printf "%s\n" z ;;

(* nested scopes *)
let result1 = let x = 5 in let y = 2 in x + y ;;
Printf.printf "%d\n" result1 ;;
(* scopes go from left to wrigth, left being the most internal scope *)

let result2 = let x = 5 in (let x = 6 in x) + x ;;
Printf.printf "%d\n" result2 ;;
(* the inner x is 6, the outer x is 5, so the result is 11 *)

(* 
  let x =1 ;;
  let x =2 ;;
  is equivalent to:
  let x =1 in 
    let x =2 in 
      x 
*)

(* if else *)
let result3 = if 2 > 1 then 3 else 2 ;;
Printf.printf "%d\n" result3 ;;

(* functions *)
let f x = x + 1 ;;
let g x y = x + y ;;
(* function calls *)
let result4 = f 3 ;;
let result5 = g 2 3 ;;

Printf.printf "%d\n" result4 ;;
Printf.printf "%d\n" result5 ;;

let g' = g (2 + 1) ;; 
(* this is called currying, the return is a new function g' that is  = 3 + y*)

(* functions are values! 
they can be used as argument values and return values *)
let double x = x * 2 ;;
let inc f = fun x -> (f x) + 1 ;; (* this returns a function and not a value, equivalent to a lambda funcion *)
let double_inc = inc double ;;

let result6 = double_inc 3 ;;
Printf.printf "%d\n" result6 ;;


(* lambda functions *)
(fun x -> x + 1) ;;
let inc = fun x -> x + 1 ;;

(* let inc x -> x + 1 ;; *)
(* this is not valid, the let keyword is missing *)

(* beware of parenthesis! they are optional but help! *)

(* fun x -> x + 1 22;  *)
(* this is not valid, the function is not applied to 22 *)

(* recursive functions -> there are no loops, only recursion *)
let rec fact n = 
  if n = 0 then 1
  else n * fact (n - 1) ;; (* without the parenthesis this results in a stack overflow, but the parenthesis is just for evaluation of the expression *)

let result7 = fact 5 ;;
Printf.printf "%d\n" result7 ;;


(* 1. Escreva uma função que calcula um hash simples: h(x) = x**2 mod n
2. Escreva uma função que recebe 3 números e retorna o maior
3. Escreva uma função que calcula a soma dos dígitos de um número
4. Escreva uma função que calcula o n-ésimo número de Tribonacci
5. Escreva uma função que verifica se um número é primo
6. Escreva uma função que retorna o próximo primo
7. Escreva uma função que recebe um prefixo e devolve uma função que adiciona o prefixo a
qualquer string *)

let hash = fun x -> (x * x) mod 17 ;;

let biggest = fun x y z ->  
  if x >= y && x >= z then x
  else if y >= x && y >=z then y
  else z  