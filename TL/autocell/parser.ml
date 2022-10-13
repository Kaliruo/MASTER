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

# 49 "parser.ml"
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
    0|]

let yytransl_block = [|
  273 (* ID *);
  274 (* INT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\004\000\004\000\005\000\003\000\003\000\
\006\000\006\000\007\000\008\000\008\000\008\000\009\000\009\000\
\009\000\009\000\009\000\009\000\010\000\010\000\010\000\010\000\
\000\000"

let yylen = "\002\000\
\007\000\003\000\001\000\001\000\003\000\005\000\000\000\002\000\
\003\000\003\000\005\000\003\000\003\000\001\000\001\000\003\000\
\003\000\003\000\002\000\002\000\003\000\001\000\001\000\001\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\025\000\000\000\000\000\000\000\000\000\
\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\
\002\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\
\000\000\000\000\001\000\008\000\000\000\006\000\000\000\000\000\
\000\000\000\000\024\000\023\000\022\000\000\000\000\000\015\000\
\000\000\000\000\020\000\019\000\000\000\000\000\000\000\000\000\
\000\000\000\000\011\000\021\000\000\000\000\000\016\000\017\000\
\018\000"

let yydgoto = "\002\000\
\004\000\009\000\020\000\010\000\011\000\021\000\037\000\038\000\
\039\000\040\000"

let yysindex = "\255\255\
\247\254\000\000\040\255\000\000\009\255\006\255\039\255\035\255\
\042\255\041\255\000\000\029\255\030\255\002\255\028\255\043\255\
\000\000\031\255\046\255\052\000\002\255\049\255\000\000\036\255\
\050\255\252\254\000\000\000\000\252\254\000\000\038\255\011\255\
\011\255\252\254\000\000\000\000\000\000\027\255\021\255\000\000\
\027\255\051\255\000\000\000\000\020\255\252\254\252\254\011\255\
\011\255\011\255\000\000\000\000\021\255\021\255\000\000\000\000\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\055\255\000\000\000\000\000\000\059\000\000\000\000\000\
\000\000\000\000\000\000\000\000\059\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\010\000\001\000\000\000\
\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\003\000\015\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\000\000\039\000\000\000\046\000\000\000\004\000\254\255\
\249\255\228\255"

let yytablesize = 289
let yytable = "\001\000\
\014\000\018\000\013\000\043\000\044\000\032\000\033\000\018\000\
\003\000\010\000\034\000\006\000\035\000\036\000\012\000\009\000\
\018\000\022\000\019\000\055\000\056\000\057\000\007\000\008\000\
\022\000\034\000\041\000\035\000\036\000\046\000\047\000\045\000\
\048\000\049\000\050\000\052\000\046\000\047\000\053\000\054\000\
\005\000\012\000\013\000\014\000\007\000\015\000\016\000\017\000\
\025\000\026\000\024\000\027\000\029\000\030\000\031\000\042\000\
\003\000\051\000\007\000\028\000\023\000\000\000\000\000\000\000\
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
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\014\000\000\000\
\013\000\000\000\014\000\014\000\013\000\013\000\000\000\010\000\
\014\000\014\000\013\000\013\000\012\000\009\000\000\000\000\000\
\012\000\012\000\010\000\000\000\000\000\000\000\012\000\012\000\
\009\000"

let yycheck = "\001\000\
\000\000\006\001\000\000\032\000\033\000\010\001\011\001\006\001\
\018\001\000\000\015\001\003\001\017\001\018\001\000\000\000\000\
\006\001\014\000\017\001\048\000\049\000\050\000\017\001\018\001\
\021\000\015\001\029\000\017\001\018\001\010\001\011\001\034\000\
\012\001\013\001\014\001\016\001\010\001\011\001\046\000\047\000\
\001\001\003\001\008\001\002\001\017\001\005\001\018\001\018\001\
\018\001\004\001\008\001\000\000\004\001\018\001\005\001\018\001\
\002\001\007\001\000\000\021\000\015\000\255\255\255\255\255\255\
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
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\006\001\255\255\
\006\001\255\255\010\001\011\001\010\001\011\001\255\255\006\001\
\016\001\017\001\016\001\017\001\006\001\006\001\255\255\255\255\
\010\001\011\001\017\001\255\255\255\255\255\255\016\001\017\001\
\017\001"

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
# 72 "parser.mly"
 (
		if _1 != 2 then error "only 2 dimension accepted";
		(_4, _6)
	)
# 241 "parser.ml"
               : Ast.prog))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 80 "parser.mly"
  (
			if _1 >= _3 then error "illegal field values";
			[("", (0, (_1, _3)))]
		)
# 252 "parser.ml"
               : 'config))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'fields) in
    Obj.repr(
# 85 "parser.mly"
  ( set_fields _1 )
# 259 "parser.ml"
               : 'config))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'field) in
    Obj.repr(
# 90 "parser.mly"
  ( [_1] )
# 266 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'fields) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'field) in
    Obj.repr(
# 92 "parser.mly"
  (_3 :: _1 )
# 274 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 97 "parser.mly"
  (
			if _3 >= _5 then error "illegal field values";
			(_1, (_3, _5))
		)
# 286 "parser.ml"
               : 'field))
; (fun __caml_parser_env ->
    Obj.repr(
# 105 "parser.mly"
  ( NOP )
# 292 "parser.ml"
               : 'opt_statements))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'statement) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'opt_statements) in
    Obj.repr(
# 107 "parser.mly"
  ( _1 )
# 300 "parser.ml"
               : 'opt_statements))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'cell) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressions) in
    Obj.repr(
# 113 "parser.mly"
  (
			if (fst _1) != 0 then error "assigned x must be 0";
			if (snd _1) != 0 then error "assigned Y must be 0";
			SET_CELL (0, _3)
		)
# 312 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressions) in
    Obj.repr(
# 119 "parser.mly"
  (let id = declare_var _1 in
		SET_VAR(id,_3))
# 321 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 128 "parser.mly"
  (
			if (_2 < -1) || (_2 > 1) then error "x out of range";
			if (_4 < -1) || (_4 > 1) then error "x out of range";
			(_2, _4)
		)
# 333 "parser.ml"
               : 'cell))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressions) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'T) in
    Obj.repr(
# 137 "parser.mly"
  (BINOP(OP_SUB, _1, _3))
# 341 "parser.ml"
               : 'expressions))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressions) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'T) in
    Obj.repr(
# 139 "parser.mly"
  (BINOP(OP_ADD, _1, _3))
# 349 "parser.ml"
               : 'expressions))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'T) in
    Obj.repr(
# 141 "parser.mly"
  (_1)
# 356 "parser.ml"
               : 'expressions))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 146 "parser.mly"
  (_1)
# 363 "parser.ml"
               : 'T))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'T) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 148 "parser.mly"
  (BINOP(OP_MUL, _1, _3))
# 371 "parser.ml"
               : 'T))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'T) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 150 "parser.mly"
  (BINOP(OP_DIV, _1, _3))
# 379 "parser.ml"
               : 'T))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'T) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 152 "parser.mly"
  (BINOP(OP_MOD, _1, _3))
# 387 "parser.ml"
               : 'T))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 154 "parser.mly"
  (NEG (_2))
# 394 "parser.ml"
               : 'T))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 156 "parser.mly"
  (_2)
# 401 "parser.ml"
               : 'T))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expressions) in
    Obj.repr(
# 160 "parser.mly"
  (_2)
# 408 "parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'cell) in
    Obj.repr(
# 162 "parser.mly"
  (CELL (0, fst _1, snd _1) )
# 415 "parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 164 "parser.mly"
  (CST _1 )
# 422 "parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 166 "parser.mly"
  (let id = get_var _1 in
		if (id = -1) then error "var non assignee" else VAR(id);)
# 430 "parser.ml"
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
