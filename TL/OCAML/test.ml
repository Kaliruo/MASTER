let print s = print_string s
let signe x = if x<0 then -1 else if x=0 then 0 else +1

let rec fact n = if n = 0 then 1 else n* fact(n-1)

let rec pgcd a b = if b = 0 then a else if a<b then pgcd b a else pgcd b (a mod b)

let rec fib n = if n=0 then 0 else if n = 1 then 1 else fib(n-1)+fib(n-2)
let rec puis x n = if n = 0 then 1 else x * puis x (n-1)
let rec puis_rap x n = if n = 0 then 1 else if (n mod 2)=0 then puis_rap x (n/2)* puis_rap x (n/2) else x* puis_rap x(n-1)


let rec make n = if n =0 then [] else [n-1] @ make(n-1)

let rec sum l = match l with
| [] -> 0
|hd::tl ->  hd+ (sum tl)

let rec makerev n = if n =0 then [] else makerev(n-1) @ [n-1] 
let rec map  f l = match l with
|[] -> []
| h::t -> [f h] @ map f t 

let rec fold f i l = match l with
| []-> i
| h::t -> f (fold f i t, f h i)