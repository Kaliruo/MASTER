type token =
  | EOF
  | DIMENSIONS
  | END
  | OF
  | ASSIGN
  | COMMA
  | LBRACKET
  | RBRACKET
  | DOT_DOT
  | DOT
  | PLUS
  | SUB
  | MULT
  | DIV
  | MOD
  | LPAR
  | RPAR
  | IF
  | THEN
  | ELSE
  | ELSIF
  | INF
  | SUP
  | INFEQ
  | SUPEQ
  | EQ
  | NEQ
  | ID of (string)
  | INT of (int)

open Parsing;;
let _ = parse_error;;
# 17 "parser.mly"

open Common
open Ast
open Printf
open Symbols

(** Raise a syntax error with the given message.
	@param msg	Message of the error. *)
let error msg =
	raise (SyntaxError msg)


(** Restructure the when assignment into selections.
	@param f	Function to build the assignment.
	@param v	Initial values.
	@param ws	Sequence of (condition, expression).
	@return		Built statement. *)
let rec make_when f v ws =
	match ws with
	| [] ->	f v
	| (c, nv)::t ->
		IF_THEN(c, f v, make_when f nv t)

# 59 "parser.ml"
let yytransl_const = [|
    0 (* EOF *);
  257 (* DIMENSIONS *);
  258 (* END *);
  259 (* OF *);
  260 (* ASSIGN *);
  261 (* COMMA *);
  262 (* LBRACKET *);
  263 (* RBRACKET *);
  264 (* DOT_DOT *);
  265 (* DOT *);
  266 (* PLUS *);
  267 (* SUB *);
  268 (* MULT *);
  269 (* DIV *);
  270 (* MOD *);
  271 (* LPAR *);
  272 (* RPAR *);
  273 (* IF *);
  274 (* THEN *);
  275 (* ELSE *);
  276 (* ELSIF *);
  277 (* INF *);
  278 (* SUP *);
  279 (* INFEQ *);
  280 (* SUPEQ *);
  281 (* EQ *);
  282 (* NEQ *);
    0|]

let yytransl_block = [|
  283 (* ID *);
  284 (* INT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\004\000\004\000\005\000\003\000\003\000\
\006\000\006\000\006\000\006\000\006\000\006\000\009\000\009\000\
\009\000\009\000\009\000\009\000\007\000\008\000\008\000\008\000\
\010\000\010\000\010\000\010\000\010\000\010\000\011\000\011\000\
\011\000\011\000\000\000"

let yylen = "\002\000\
\007\000\003\000\001\000\001\000\003\000\005\000\000\000\002\000\
\003\000\003\000\005\000\007\000\009\000\011\000\003\000\003\000\
\003\000\003\000\003\000\003\000\005\000\003\000\003\000\001\000\
\001\000\003\000\003\000\003\000\002\000\002\000\003\000\001\000\
\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\035\000\000\000\000\000\000\000\000\000\
\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\
\002\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\
\000\000\000\000\000\000\000\000\000\000\034\000\033\000\032\000\
\000\000\000\000\000\000\025\000\000\000\001\000\008\000\000\000\
\006\000\000\000\030\000\029\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\031\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\026\000\027\000\
\028\000\021\000\011\000\000\000\000\000\000\000\000\000\012\000\
\000\000\000\000\013\000\000\000\000\000\014\000"

let yydgoto = "\002\000\
\004\000\009\000\021\000\010\000\011\000\022\000\032\000\033\000\
\034\000\035\000\036\000"

let yysindex = "\054\000\
\029\255\000\000\057\255\000\000\056\255\238\254\062\255\052\255\
\064\255\063\255\000\000\041\255\043\255\018\255\045\255\065\255\
\000\000\046\255\010\255\076\255\081\000\018\255\078\255\000\000\
\055\255\080\255\048\255\048\255\010\255\000\000\000\000\000\000\
\067\255\068\255\005\255\000\000\010\255\000\000\000\000\010\255\
\000\000\059\255\000\000\000\000\252\254\010\255\010\255\010\255\
\010\255\010\255\010\255\010\255\010\255\018\255\048\255\048\255\
\048\255\004\255\004\255\087\255\000\000\005\255\005\255\004\255\
\004\255\004\255\004\255\004\255\004\255\003\255\000\000\000\000\
\000\000\000\000\000\000\018\255\010\255\093\255\079\255\000\000\
\018\255\011\255\000\000\018\255\094\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\096\255\000\000\000\000\000\000\099\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\011\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\024\255\000\000\000\000\
\000\000\079\000\084\000\000\000\000\000\027\000\053\000\082\255\
\083\255\084\255\085\255\086\255\088\255\000\000\000\000\000\000\
\000\000\000\000\000\000\103\255\000\000\000\000\000\000\000\000\
\027\255\000\000\000\000\103\255\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\236\255\000\000\092\000\000\000\242\255\255\255\
\031\000\251\255\232\255"

let yytablesize = 367
let yytable = "\023\000\
\024\000\039\000\043\000\044\000\075\000\046\000\047\000\023\000\
\007\000\008\000\007\000\061\000\083\000\046\000\047\000\018\000\
\055\000\056\000\057\000\027\000\028\000\076\000\077\000\018\000\
\029\000\007\000\023\000\045\000\007\000\084\000\071\000\072\000\
\073\000\070\000\019\000\058\000\030\000\031\000\059\000\023\000\
\062\000\063\000\007\000\007\000\020\000\007\000\064\000\065\000\
\066\000\067\000\068\000\069\000\022\000\018\000\001\000\078\000\
\003\000\005\000\006\000\013\000\082\000\023\000\029\000\085\000\
\012\000\014\000\023\000\015\000\016\000\023\000\017\000\007\000\
\025\000\026\000\030\000\031\000\046\000\047\000\010\000\037\000\
\038\000\040\000\041\000\009\000\042\000\054\000\060\000\048\000\
\049\000\050\000\051\000\052\000\053\000\074\000\080\000\086\000\
\081\000\003\000\007\000\016\000\015\000\018\000\017\000\019\000\
\007\000\020\000\024\000\079\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\024\000\000\000\000\000\000\000\024\000\000\000\
\000\000\000\000\024\000\024\000\007\000\000\000\000\000\000\000\
\024\000\024\000\024\000\024\000\024\000\024\000\024\000\024\000\
\024\000\024\000\024\000\024\000\023\000\007\000\007\000\000\000\
\023\000\000\000\000\000\000\000\023\000\023\000\000\000\000\000\
\000\000\000\000\023\000\023\000\023\000\023\000\023\000\023\000\
\023\000\023\000\023\000\023\000\023\000\023\000\022\000\000\000\
\000\000\000\000\022\000\000\000\000\000\000\000\022\000\022\000\
\000\000\000\000\000\000\000\000\022\000\022\000\022\000\022\000\
\022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
\010\000\000\000\000\000\000\000\010\000\009\000\000\000\000\000\
\000\000\009\000\000\000\000\000\000\000\000\000\000\000\010\000\
\000\000\010\000\010\000\000\000\009\000\000\000\009\000\009\000\
\000\000\010\000\000\000\000\000\000\000\000\000\009\000"

let yycheck = "\014\000\
\000\000\022\000\027\000\028\000\002\001\010\001\011\001\022\000\
\027\001\028\001\000\000\016\001\002\001\010\001\011\001\006\001\
\012\001\013\001\014\001\010\001\011\001\019\001\020\001\006\001\
\015\001\002\001\000\000\029\000\002\001\019\001\055\000\056\000\
\057\000\054\000\017\001\037\000\027\001\028\001\040\000\054\000\
\046\000\047\000\019\001\020\001\027\001\019\001\048\000\049\000\
\050\000\051\000\052\000\053\000\000\000\006\001\001\000\076\000\
\028\001\001\001\003\001\008\001\081\000\076\000\015\001\084\000\
\003\001\002\001\081\000\005\001\028\001\084\000\028\001\027\001\
\008\001\028\001\027\001\028\001\010\001\011\001\000\000\004\001\
\000\000\004\001\028\001\000\000\005\001\018\001\028\001\021\001\
\022\001\023\001\024\001\025\001\026\001\007\001\002\001\002\001\
\018\001\002\001\000\000\018\001\018\001\018\001\018\001\018\001\
\002\001\018\001\015\000\077\000\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\002\001\255\255\255\255\255\255\006\001\255\255\
\255\255\255\255\010\001\011\001\002\001\255\255\255\255\255\255\
\016\001\017\001\018\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001\026\001\027\001\002\001\019\001\020\001\255\255\
\006\001\255\255\255\255\255\255\010\001\011\001\255\255\255\255\
\255\255\255\255\016\001\017\001\018\001\019\001\020\001\021\001\
\022\001\023\001\024\001\025\001\026\001\027\001\002\001\255\255\
\255\255\255\255\006\001\255\255\255\255\255\255\010\001\011\001\
\255\255\255\255\255\255\255\255\016\001\017\001\018\001\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\002\001\255\255\255\255\255\255\006\001\002\001\255\255\255\255\
\255\255\006\001\255\255\255\255\255\255\255\255\255\255\017\001\
\255\255\019\001\020\001\255\255\017\001\255\255\019\001\020\001\
\255\255\027\001\255\255\255\255\255\255\255\255\027\001"

let yynames_const = "\
  EOF\000\
  DIMENSIONS\000\
  END\000\
  OF\000\
  ASSIGN\000\
  COMMA\000\
  LBRACKET\000\
  RBRACKET\000\
  DOT_DOT\000\
  DOT\000\
  PLUS\000\
  SUB\000\
  MULT\000\
  DIV\000\
  MOD\000\
  LPAR\000\
  RPAR\000\
  IF\000\
  THEN\000\
  ELSE\000\
  ELSIF\000\
  INF\000\
  SUP\000\
  INFEQ\000\
  SUPEQ\000\
  EQ\000\
  NEQ\000\
  "

let yynames_block = "\
  ID\000\
  INT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : 'config) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'opt_statements) in
    Obj.repr(
# 85 "parser.mly"
 (
		if _1 != 2 then error "only 2 dimension accepted";
		(_4, _6)
	)
# 300 "parser.ml"
               : Ast.prog))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 93 "parser.mly"
  (
			if _1 >= _3 then error "illegal field values";
			[("", (0, (_1, _3)))]
		)
# 311 "parser.ml"
               : 'config))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'fields) in
    Obj.repr(
# 98 "parser.mly"
  ( set_fields _1 )
# 318 "parser.ml"
               : 'config))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'field) in
    Obj.repr(
# 103 "parser.mly"
  ( [_1] )
# 325 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'fields) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'field) in
    Obj.repr(
# 105 "parser.mly"
  (_3 :: _1 )
# 333 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 110 "parser.mly"
  (
			if _3 >= _5 then error "illegal field values";
			(_1, (_3, _5))
		)
# 345 "parser.ml"
               : 'field))
; (fun __caml_parser_env ->
    Obj.repr(
# 118 "parser.mly"
  ( NOP )
# 351 "parser.ml"
               : 'opt_statements))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'statement) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'opt_statements) in
    Obj.repr(
# 120 "parser.mly"
  ( SEQ(_1,_2) )
# 359 "parser.ml"
               : 'opt_statements))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'cell) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressions) in
    Obj.repr(
# 126 "parser.mly"
  (
			if (fst _1) != 0 then error "assigned x must be 0";
			if (snd _1) != 0 then error "assigned Y must be 0";
			SET_CELL (0, _3)
		)
# 371 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressions) in
    Obj.repr(
# 132 "parser.mly"
  (let id = declare_var _1 in
		SET_VAR(id,_3))
# 380 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'cond) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'opt_statements) in
    Obj.repr(
# 135 "parser.mly"
  (IF_THEN(_2,_4,NOP))
# 388 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 5 : 'cond) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : 'opt_statements) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'opt_statements) in
    Obj.repr(
# 137 "parser.mly"
  (IF_THEN(_2,_4,_6))
# 397 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 7 : 'cond) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'opt_statements) in
    let _6 = (Parsing.peek_val __caml_parser_env 3 : 'cond) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'opt_statements) in
    Obj.repr(
# 139 "parser.mly"
  (IF_THEN(_2,_4,IF_THEN(_6, _8, NOP)))
# 407 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 9 : 'cond) in
    let _4 = (Parsing.peek_val __caml_parser_env 7 : 'opt_statements) in
    let _6 = (Parsing.peek_val __caml_parser_env 5 : 'cond) in
    let _8 = (Parsing.peek_val __caml_parser_env 3 : 'opt_statements) in
    let _10 = (Parsing.peek_val __caml_parser_env 1 : 'opt_statements) in
    Obj.repr(
# 141 "parser.mly"
  (IF_THEN(_2,_4,IF_THEN(_6, _8, _10)))
# 418 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressions) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressions) in
    Obj.repr(
# 148 "parser.mly"
 (COMP(COMP_GT,_1,_3))
# 426 "parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressions) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressions) in
    Obj.repr(
# 150 "parser.mly"
 (COMP(COMP_LT,_1,_3))
# 434 "parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressions) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressions) in
    Obj.repr(
# 152 "parser.mly"
 (COMP(COMP_GE,_1,_3))
# 442 "parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressions) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressions) in
    Obj.repr(
# 154 "parser.mly"
 (COMP(COMP_LE,_1,_3))
# 450 "parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressions) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressions) in
    Obj.repr(
# 156 "parser.mly"
 (COMP(COMP_EQ,_1,_3))
# 458 "parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressions) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressions) in
    Obj.repr(
# 158 "parser.mly"
 (COMP(COMP_NE,_1,_3))
# 466 "parser.ml"
               : 'cond))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 163 "parser.mly"
  (
			if (_2 < -1) || (_2 > 1) then error "x out of range";
			if (_4 < -1) || (_4 > 1) then error "x out of range";
			(_2, _4)
		)
# 478 "parser.ml"
               : 'cell))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressions) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'T) in
    Obj.repr(
# 172 "parser.mly"
  (BINOP(OP_SUB, _1, _3))
# 486 "parser.ml"
               : 'expressions))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressions) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'T) in
    Obj.repr(
# 174 "parser.mly"
  (BINOP(OP_ADD, _1, _3))
# 494 "parser.ml"
               : 'expressions))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'T) in
    Obj.repr(
# 176 "parser.mly"
  (_1)
# 501 "parser.ml"
               : 'expressions))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 181 "parser.mly"
  (_1)
# 508 "parser.ml"
               : 'T))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'T) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 183 "parser.mly"
  (BINOP(OP_MUL, _1, _3))
# 516 "parser.ml"
               : 'T))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'T) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 185 "parser.mly"
  (BINOP(OP_DIV, _1, _3))
# 524 "parser.ml"
               : 'T))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'T) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 187 "parser.mly"
  (BINOP(OP_MOD, _1, _3))
# 532 "parser.ml"
               : 'T))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 189 "parser.mly"
  (NEG (_2))
# 539 "parser.ml"
               : 'T))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 191 "parser.mly"
  (_2)
# 546 "parser.ml"
               : 'T))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expressions) in
    Obj.repr(
# 195 "parser.mly"
  (_2)
# 553 "parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'cell) in
    Obj.repr(
# 197 "parser.mly"
  (CELL (0, fst _1, snd _1) )
# 560 "parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 199 "parser.mly"
  (CST _1 )
# 567 "parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 201 "parser.mly"
  (let id = get_var _1 in
		if (id = -1) then error "var non assignee" else VAR(id);)
# 575 "parser.ml"
               : 'expression))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.prog)
