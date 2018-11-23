
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WITH
    | UNDERSCORE
    | TRANSITION
    | TID of (
# 39 "ScillaParser.mly"
       (string)
# 14 "ScillaParser.ml"
  )
    | TFUN
    | TARROW
    | STRING of (
# 42 "ScillaParser.mly"
       (string)
# 21 "ScillaParser.ml"
  )
    | SEND
    | SEMICOLON
    | RSQB
    | RPAREN
    | RBRACE
    | PERIOD
    | NUMLIT of (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 32 "ScillaParser.ml"
  )
    | MATCH
    | MAP
    | LSQB
    | LPAREN
    | LIBRARY
    | LET
    | LBRACE
    | IN
    | IMPORT
    | ID of (
# 37 "ScillaParser.mly"
       (string)
# 46 "ScillaParser.ml"
  )
    | HEXLIT of (
# 46 "ScillaParser.mly"
       (string)
# 51 "ScillaParser.ml"
  )
    | FUN
    | FORALL
    | FIELD
    | EXISTS
    | EVENT
    | EQ
    | EOF
    | END
    | EMP
    | DELETE
    | CONTRACT
    | COMMA
    | COLON
    | CID of (
# 38 "ScillaParser.mly"
       (string)
# 69 "ScillaParser.ml"
  )
    | BUILTIN
    | BLOCK
    | BIND
    | BAR
    | AT
    | ASSIGN
    | ARROW
    | AND
    | ACCEPT
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState236
  | MenhirState233
  | MenhirState229
  | MenhirState225
  | MenhirState223
  | MenhirState220
  | MenhirState214
  | MenhirState211
  | MenhirState204
  | MenhirState200
  | MenhirState196
  | MenhirState184
  | MenhirState181
  | MenhirState179
  | MenhirState176
  | MenhirState173
  | MenhirState172
  | MenhirState171
  | MenhirState169
  | MenhirState168
  | MenhirState163
  | MenhirState161
  | MenhirState156
  | MenhirState154
  | MenhirState153
  | MenhirState152
  | MenhirState149
  | MenhirState146
  | MenhirState143
  | MenhirState142
  | MenhirState140
  | MenhirState135
  | MenhirState130
  | MenhirState125
  | MenhirState123
  | MenhirState121
  | MenhirState120
  | MenhirState118
  | MenhirState110
  | MenhirState109
  | MenhirState103
  | MenhirState99
  | MenhirState97
  | MenhirState94
  | MenhirState92
  | MenhirState90
  | MenhirState89
  | MenhirState84
  | MenhirState81
  | MenhirState77
  | MenhirState68
  | MenhirState66
  | MenhirState64
  | MenhirState62
  | MenhirState61
  | MenhirState60
  | MenhirState59
  | MenhirState56
  | MenhirState55
  | MenhirState54
  | MenhirState51
  | MenhirState49
  | MenhirState47
  | MenhirState45
  | MenhirState44
  | MenhirState42
  | MenhirState39
  | MenhirState37
  | MenhirState36
  | MenhirState33
  | MenhirState30
  | MenhirState24
  | MenhirState22
  | MenhirState19
  | MenhirState18
  | MenhirState14
  | MenhirState11
  | MenhirState8
  | MenhirState6
  | MenhirState4
  | MenhirState1

# 19 "ScillaParser.mly"
  
  open Syntax
  open ErrorUtils
  open ParserUtil

  open ParsedSyntax

  let to_type d = match d with
    | x when PrimTypes.is_prim_type (PrimType x) -> PrimType x
    | _ -> ADT (d, [])
  
  let build_prim_literal_exn t v =
    match PrimTypes.build_prim_literal t v with
    | Some l -> l
    | None -> raise (SyntaxError ("Invalid " ^ (pp_typ t) ^ " literal " ^ v))

# 195 "ScillaParser.ml"

let rec _menhir_goto_list_field_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_field_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv915) * (
# 38 "ScillaParser.mly"
       (string)
# 206 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_list_field_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TRANSITION ->
            _menhir_run157 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | EOF ->
            _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156) : 'freshtv916)
    | MenhirState214 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv919 * _menhir_state * 'tv_field) * _menhir_state * 'tv_list_field_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv917 * _menhir_state * 'tv_field) * _menhir_state * 'tv_list_field_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_field)), _, (xs : 'tv_list_field_)) = _menhir_stack in
        let _v : 'tv_list_field_ = 
# 213 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 228 "ScillaParser.ml"
         in
        _menhir_goto_list_field_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv918)) : 'freshtv920)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_arg_pattern_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_arg_pattern_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv909 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 242 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_arg_pattern_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv907 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 250 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ps : 'tv_list_arg_pattern_) : 'tv_list_arg_pattern_) = _v in
        ((let (_menhir_stack, _menhir_s, (c : (
# 38 "ScillaParser.mly"
       (string)
# 257 "ScillaParser.ml"
        )), _startpos_c_) = _menhir_stack in
        let _v : 'tv_pattern = 
# 214 "ScillaParser.mly"
                                  ( Constructor (c, ps) )
# 262 "ScillaParser.ml"
         in
        _menhir_goto_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv908)) : 'freshtv910)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv913 * _menhir_state * 'tv_arg_pattern) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_arg_pattern_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv911 * _menhir_state * 'tv_arg_pattern) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_arg_pattern_) : 'tv_list_arg_pattern_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_arg_pattern)) = _menhir_stack in
        let _v : 'tv_list_arg_pattern_ = 
# 213 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 278 "ScillaParser.ml"
         in
        _menhir_goto_list_arg_pattern_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv912)) : 'freshtv914)
    | _ ->
        _menhir_fail ()

and _menhir_goto_arg_pattern : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_arg_pattern -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv905 * _menhir_state * 'tv_arg_pattern) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | UNDERSCORE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ARROW | RPAREN ->
        _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv906)

and _menhir_reduce35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_field_ = 
# 211 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 312 "ScillaParser.ml"
     in
    _menhir_goto_list_field_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run150 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv901 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 328 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv897 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 340 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CID _v ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FORALL ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | LPAREN ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | MAP ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | TID _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152) : 'freshtv898)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv899 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 366 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv900)) : 'freshtv902)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv903 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv904)

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv853 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 387 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv851 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 393 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__1_), (i : (
# 37 "ScillaParser.mly"
       (string)
# 398 "ScillaParser.ml"
        )), _startpos_i_), _, (t : 'tv_typ)), _), _, (e : 'tv_exp)) = _menhir_stack in
        let _7 = () in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_simple_exp = let _startpos = _startpos__1_ in
        
# 147 "ScillaParser.mly"
  ( (Fun (Ident (i, toLoc _startpos), t, e), toLoc _startpos ) )
# 409 "ScillaParser.ml"
         in
        _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv852)) : 'freshtv854)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv857 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 417 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_simple_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv855 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 423 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_simple_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__1_), (x : (
# 37 "ScillaParser.mly"
       (string)
# 428 "ScillaParser.ml"
        )), _startpos_x_), _startpos__4_), _, (f : 'tv_simple_exp)), _, (e : 'tv_exp)) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _1 = () in
        let _v : 'tv_exp = let t = 
# 124 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( None )
# 436 "ScillaParser.ml"
         in
        let _startpos = _startpos__1_ in
        
# 142 "ScillaParser.mly"
  ((Let ((Ident (x, toLoc _startpos)), t, f, e), toLoc _startpos) )
# 442 "ScillaParser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv856)) : 'freshtv858)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv861 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 450 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_type_annot) * Lexing.position) * _menhir_state * 'tv_simple_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv859 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 456 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_type_annot) * Lexing.position) * _menhir_state * 'tv_simple_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let ((((((_menhir_stack, _menhir_s, _startpos__1_), (x : (
# 37 "ScillaParser.mly"
       (string)
# 461 "ScillaParser.ml"
        )), _startpos_x_), (x_inlined1 : 'tv_type_annot)), _startpos__4_), _, (f : 'tv_simple_exp)), _, (e : 'tv_exp)) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _1 = () in
        let _v : 'tv_exp = let t =
          let x = x_inlined1 in
          
# 126 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( Some x )
# 471 "ScillaParser.ml"
          
        in
        let _startpos = _startpos__1_ in
        
# 142 "ScillaParser.mly"
  ((Let ((Ident (x, toLoc _startpos)), t, f, e), toLoc _startpos) )
# 478 "ScillaParser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv860)) : 'freshtv862)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv869 * _menhir_state) * _menhir_state * 'tv_pattern)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv867 * _menhir_state) * _menhir_state * 'tv_pattern)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (p : 'tv_pattern)), _, (e : 'tv_exp)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_exp_pm_clause = 
# 223 "ScillaParser.mly"
                                      ( p, e )
# 492 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv865) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exp_pm_clause) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv863 * _menhir_state * 'tv_exp_pm_clause) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BAR ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | END ->
            _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv864)) : 'freshtv866)) : 'freshtv868)) : 'freshtv870)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv873 * _menhir_state * Lexing.position) * (
# 39 "ScillaParser.mly"
       (string)
# 517 "ScillaParser.ml"
        ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv871 * _menhir_state * Lexing.position) * (
# 39 "ScillaParser.mly"
       (string)
# 523 "ScillaParser.ml"
        ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _startpos__1_), (i : (
# 39 "ScillaParser.mly"
       (string)
# 528 "ScillaParser.ml"
        ))), _, (e : 'tv_exp)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_simple_exp = let _startpos = _startpos__1_ in
        
# 173 "ScillaParser.mly"
  ( (TFun (Ident (i, toLoc _startpos), e), toLoc _startpos) )
# 536 "ScillaParser.ml"
         in
        _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv872)) : 'freshtv874)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv881 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 544 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv879 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 550 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__1_), (ns : (
# 37 "ScillaParser.mly"
       (string)
# 555 "ScillaParser.ml"
        )), _startpos_ns_), _startpos__3_), _, (e : 'tv_exp)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_libentry = 
# 318 "ScillaParser.mly"
                           ( { lname = asIdL ns (toLoc _startpos_ns_) ; lexp = e } )
# 562 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv877) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_libentry) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv875 * _menhir_state * 'tv_libentry) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CONTRACT | EOF ->
            _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv876)) : 'freshtv878)) : 'freshtv880)) : 'freshtv882)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv889 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 587 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv887 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 593 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s), (f : (
# 37 "ScillaParser.mly"
       (string)
# 598 "ScillaParser.ml"
        )), _startpos_f_), _, (t : 'tv_typ)), _, _startpos__5_), _, (rhs : 'tv_exp)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_field = 
# 305 "ScillaParser.mly"
  ( asIdL f (toLoc _startpos_f_), t, rhs )
# 606 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv885) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_field) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv883 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FIELD ->
            _menhir_run150 _menhir_env (Obj.magic _menhir_stack) MenhirState214
        | EOF | TRANSITION ->
            _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState214
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState214) : 'freshtv884)) : 'freshtv886)) : 'freshtv888)) : 'freshtv890)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv893 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 631 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv891 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 637 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (l : (
# 37 "ScillaParser.mly"
       (string)
# 642 "ScillaParser.ml"
        )), _startpos_l_), _, _startpos__2_), _, (r : 'tv_exp)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_stmt = let _startpos = _startpos_l_ in
        
# 257 "ScillaParser.mly"
                         ( (Bind (asIdL l (toLoc _startpos__2_), r), toLoc _startpos) )
# 649 "ScillaParser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv892)) : 'freshtv894)
    | MenhirState223 | MenhirState220 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv895 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BLOCK ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BUILTIN ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CID _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EMP ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EOF ->
            _menhir_run221 _menhir_env (Obj.magic _menhir_stack) MenhirState223
        | FUN ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXLIT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LET ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MATCH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TFUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState223) : 'freshtv896)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_ident_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_ident_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv845 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 701 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_option_ctargs_) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_ident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv843 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 709 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_option_ctargs_) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((args : 'tv_list_ident_) : 'tv_list_ident_) = _v in
        ((let ((_menhir_stack, _menhir_s, (c : (
# 38 "ScillaParser.mly"
       (string)
# 716 "ScillaParser.ml"
        )), _startpos_c_), (ts : 'tv_option_ctargs_)) = _menhir_stack in
        let _v : 'tv_simple_exp = let _startpos = _startpos_c_ in
        
# 162 "ScillaParser.mly"
  ( let targs =
      (match ts with
       | None -> []
       | Some ls -> ls) in
    (Constr (c, targs, args), toLoc _startpos)
  )
# 727 "ScillaParser.ml"
         in
        _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv844)) : 'freshtv846)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv849 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_ident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv847 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_ident_) : 'tv_list_ident_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
        let _v : 'tv_list_ident_ = 
# 213 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 743 "ScillaParser.ml"
         in
        _menhir_goto_list_ident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv848)) : 'freshtv850)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMICOLON_msg_entry_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_msg_entry_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv837) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv835) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_) : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__ = 
# 144 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x )
# 764 "ScillaParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_msg_entry__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv836)) : 'freshtv838)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv841 * _menhir_state * 'tv_msg_entry)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv839 * _menhir_state * 'tv_msg_entry)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_) : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_msg_entry)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_ = 
# 243 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 781 "ScillaParser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_msg_entry_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv840)) : 'freshtv842)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState211 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv813 * _menhir_state * 'tv_transition) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv811 * _menhir_state * 'tv_transition) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_) : 'tv_list_transition_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition)) = _menhir_stack in
        let _v : 'tv_list_transition_ = 
# 213 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 803 "ScillaParser.ml"
         in
        _menhir_goto_list_transition_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv812)) : 'freshtv814)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv833) * (
# 38 "ScillaParser.mly"
       (string)
# 811 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_list_field_) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv831) * (
# 38 "ScillaParser.mly"
       (string)
# 819 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_list_field_) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_) : 'tv_list_transition_) = _v in
        ((let (((_menhir_stack, (c : (
# 38 "ScillaParser.mly"
       (string)
# 826 "ScillaParser.ml"
        )), _startpos_c_), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_param_pair__)), _, (fs : 'tv_list_field_)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_contract = let params = 
# 232 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( xs )
# 834 "ScillaParser.ml"
         in
        
# 312 "ScillaParser.mly"
  ( { cname   = asIdL c (toLoc _startpos_c_);
      cparams = params;
      cfields = fs;
      ctrans  = ts } )
# 842 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv829) = _menhir_stack in
        let (_v : 'tv_contract) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv827 * 'tv_imports) * _menhir_state * 'tv_option_library_) * 'tv_contract) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv823 * 'tv_imports) * _menhir_state * 'tv_option_library_) * 'tv_contract) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv821 * 'tv_imports) * _menhir_state * 'tv_option_library_) * 'tv_contract) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, (els : 'tv_imports)), _, (ls : 'tv_option_library_)), (c : 'tv_contract)) = _menhir_stack in
            let _4 = () in
            let _v : (
# 107 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.cmodule)
# 863 "ScillaParser.ml"
            ) = 
# 334 "ScillaParser.mly"
  ( { cname = c.cname;
      libs = ls;
      elibs = els;
      contr = c } )
# 870 "ScillaParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv819) = _menhir_stack in
            let (_v : (
# 107 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.cmodule)
# 877 "ScillaParser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv817) = Obj.magic _menhir_stack in
            let (_v : (
# 107 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.cmodule)
# 884 "ScillaParser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv815) = Obj.magic _menhir_stack in
            let ((_1 : (
# 107 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.cmodule)
# 891 "ScillaParser.ml"
            )) : (
# 107 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.cmodule)
# 895 "ScillaParser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv816)) : 'freshtv818)) : 'freshtv820)) : 'freshtv822)) : 'freshtv824)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv825 * 'tv_imports) * _menhir_state * 'tv_option_library_) * 'tv_contract) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv826)) : 'freshtv828)) : 'freshtv830)) : 'freshtv832)) : 'freshtv834)
    | _ ->
        _menhir_fail ()

and _menhir_goto_trans_id : _menhir_env -> 'ttv_tail -> 'tv_trans_id -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv809 * _menhir_state) * 'tv_trans_id) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv805 * _menhir_state) * 'tv_trans_id) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            _menhir_reduce53 _menhir_env (Obj.magic _menhir_stack) MenhirState161
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161) : 'freshtv806)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv807 * _menhir_state) * 'tv_trans_id) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv808)) : 'freshtv810)

and _menhir_goto_pattern : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_pattern -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv791 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv787 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv785 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_pattern)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_arg_pattern = 
# 220 "ScillaParser.mly"
                              ( p )
# 960 "ScillaParser.ml"
             in
            _menhir_goto_arg_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv786)) : 'freshtv788)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv789 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv790)) : 'freshtv792)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv797 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv793 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv794)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv795 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv796)) : 'freshtv798)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv803 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv799 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ACCEPT ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DELETE ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EVENT ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run166 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SEND ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BAR | END ->
                _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack) MenhirState171
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171) : 'freshtv800)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv801 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv802)) : 'freshtv804)
    | _ ->
        _menhir_fail ()

and _menhir_reduce29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_arg_pattern_ = 
# 211 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 1064 "ScillaParser.ml"
     in
    _menhir_goto_list_arg_pattern_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv783) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_arg_pattern = 
# 217 "ScillaParser.mly"
             ( Wildcard )
# 1078 "ScillaParser.ml"
     in
    _menhir_goto_arg_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv784)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNDERSCORE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 1102 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv781) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 37 "ScillaParser.mly"
       (string)
# 1112 "ScillaParser.ml"
    )) : (
# 37 "ScillaParser.mly"
       (string)
# 1116 "ScillaParser.ml"
    )) = _v in
    let (_startpos_x_ : Lexing.position) = _startpos in
    ((let _v : 'tv_arg_pattern = let _startpos = _startpos_x_ in
    
# 218 "ScillaParser.mly"
         (Binder (Ident (x, toLoc _startpos)))
# 1123 "ScillaParser.ml"
     in
    _menhir_goto_arg_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv782)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "ScillaParser.mly"
       (string)
# 1130 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv779) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : (
# 38 "ScillaParser.mly"
       (string)
# 1140 "ScillaParser.ml"
    )) : (
# 38 "ScillaParser.mly"
       (string)
# 1144 "ScillaParser.ml"
    )) = _v in
    let (_startpos_c_ : Lexing.position) = _startpos in
    ((let _v : 'tv_arg_pattern = 
# 219 "ScillaParser.mly"
            ( Constructor (c, []) )
# 1150 "ScillaParser.ml"
     in
    _menhir_goto_arg_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv780)

and _menhir_goto_loption_separated_nonempty_list_COMMA_param_pair__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_param_pair__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv771) * (
# 38 "ScillaParser.mly"
       (string)
# 1163 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv767) * (
# 38 "ScillaParser.mly"
       (string)
# 1173 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FIELD ->
                _menhir_run150 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | EOF | TRANSITION ->
                _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149) : 'freshtv768)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv769) * (
# 38 "ScillaParser.mly"
       (string)
# 1193 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv770)) : 'freshtv772)
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv777 * _menhir_state) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv773 * _menhir_state) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ACCEPT ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DELETE ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EVENT ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run166 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SEND ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | END ->
                _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack) MenhirState163
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState163) : 'freshtv774)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv775 * _menhir_state) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv776)) : 'freshtv778)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_targ_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_targ_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv761 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_targ_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv759 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_nonempty_list_targ_) : 'tv_nonempty_list_targ_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_targ)) = _menhir_stack in
        let _v : 'tv_nonempty_list_targ_ = 
# 223 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 1253 "ScillaParser.ml"
         in
        _menhir_goto_nonempty_list_targ_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv760)) : 'freshtv762)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv765 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1261 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_targ_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv763 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1269 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((targs : 'tv_nonempty_list_targ_) : 'tv_nonempty_list_targ_) = _v in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), (f : (
# 37 "ScillaParser.mly"
       (string)
# 1276 "ScillaParser.ml"
        )), _startpos_f_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_simple_exp = let _startpos = _startpos__1_ in
        
# 176 "ScillaParser.mly"
  ( (TApp ((Ident (f, toLoc _startpos)), targs), toLoc _startpos) )
# 1283 "ScillaParser.ml"
         in
        _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv764)) : 'freshtv766)
    | _ ->
        _menhir_fail ()

and _menhir_reduce53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_param_pair__ = 
# 142 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 1294 "ScillaParser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_param_pair__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list_exp_pm_clause_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_exp_pm_clause_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv753 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1307 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_list_exp_pm_clause_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv749 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1317 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_list_exp_pm_clause_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv747 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1324 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_list_exp_pm_clause_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), (x : (
# 37 "ScillaParser.mly"
       (string)
# 1329 "ScillaParser.ml"
            )), _startpos_x_), _, (cs : 'tv_list_exp_pm_clause_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_exp = let _startpos = _startpos__1_ in
            
# 170 "ScillaParser.mly"
  ( (MatchExpr (Ident (x, toLoc _startpos_x_), cs), toLoc _startpos) )
# 1338 "ScillaParser.ml"
             in
            _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv748)) : 'freshtv750)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv751 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1348 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_list_exp_pm_clause_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv752)) : 'freshtv754)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv757 * _menhir_state * 'tv_exp_pm_clause) * _menhir_state * 'tv_list_exp_pm_clause_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv755 * _menhir_state * 'tv_exp_pm_clause) * _menhir_state * 'tv_list_exp_pm_clause_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_exp_pm_clause)), _, (xs : 'tv_list_exp_pm_clause_)) = _menhir_stack in
        let _v : 'tv_list_exp_pm_clause_ = 
# 213 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 1361 "ScillaParser.ml"
         in
        _menhir_goto_list_exp_pm_clause_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv756)) : 'freshtv758)
    | _ ->
        _menhir_fail ()

and _menhir_goto_simple_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_simple_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState223 | MenhirState220 | MenhirState176 | MenhirState154 | MenhirState11 | MenhirState14 | MenhirState33 | MenhirState125 | MenhirState118 | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv733 * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv731 * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (f : 'tv_simple_exp)) = _menhir_stack in
        let _v : 'tv_exp = 
# 138 "ScillaParser.mly"
                 (f)
# 1380 "ScillaParser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv732)) : 'freshtv734)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv739 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1388 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv735 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1398 "ScillaParser.ml"
            ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv736)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv737 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1440 "ScillaParser.ml"
            ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv738)) : 'freshtv740)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv745 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1449 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_type_annot) * Lexing.position) * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv741 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1459 "ScillaParser.ml"
            ) * Lexing.position) * 'tv_type_annot) * Lexing.position) * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv742)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv743 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1501 "ScillaParser.ml"
            ) * Lexing.position) * 'tv_type_annot) * Lexing.position) * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv744)) : 'freshtv746)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_map_access_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_map_access_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv705 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1517 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1521 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_nonempty_list_map_access_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv703 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1527 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1531 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_nonempty_list_map_access_) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, (l : (
# 37 "ScillaParser.mly"
       (string)
# 1536 "ScillaParser.ml"
        )), _startpos_l_), _, _startpos__2_), (r : (
# 37 "ScillaParser.mly"
       (string)
# 1540 "ScillaParser.ml"
        )), _startpos_r_), _, (keys : 'tv_nonempty_list_map_access_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_stmt = let _startpos = _startpos_l_ in
        
# 260 "ScillaParser.mly"
  ( MapGet(asIdL l (toLoc _startpos_l_), asIdL r (toLoc _startpos_r_), keys, true), toLoc _startpos )
# 1547 "ScillaParser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv704)) : 'freshtv706)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv709 * _menhir_state * 'tv_map_access) * _menhir_state * 'tv_nonempty_list_map_access_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv707 * _menhir_state * 'tv_map_access) * _menhir_state * 'tv_nonempty_list_map_access_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_map_access)), _, (xs : 'tv_nonempty_list_map_access_)) = _menhir_stack in
        let _v : 'tv_nonempty_list_map_access_ = 
# 223 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 1559 "ScillaParser.ml"
         in
        _menhir_goto_nonempty_list_map_access_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv708)) : 'freshtv710)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv713 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1567 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 1571 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_nonempty_list_map_access_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv711 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1577 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 1581 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_nonempty_list_map_access_) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, (l : (
# 37 "ScillaParser.mly"
       (string)
# 1586 "ScillaParser.ml"
        )), _startpos_l_), _, _startpos__2_), (r : (
# 37 "ScillaParser.mly"
       (string)
# 1590 "ScillaParser.ml"
        )), _startpos_r_), _, (keys : 'tv_nonempty_list_map_access_)) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : 'tv_stmt = let _startpos = _startpos_l_ in
        
# 262 "ScillaParser.mly"
  ( MapGet(asIdL l (toLoc _startpos_l_), asIdL r (toLoc _startpos_r_), keys, false), toLoc _startpos )
# 1598 "ScillaParser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv712)) : 'freshtv714)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv725 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1606 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_nonempty_list_map_access_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv721 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1616 "ScillaParser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_nonempty_list_map_access_) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv717 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1628 "ScillaParser.ml"
                ) * Lexing.position) * _menhir_state * 'tv_nonempty_list_map_access_) * Lexing.position) = Obj.magic _menhir_stack in
                let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 1633 "ScillaParser.ml"
                )) = _v in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv715 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1641 "ScillaParser.ml"
                ) * Lexing.position) * _menhir_state * 'tv_nonempty_list_map_access_) * Lexing.position) = Obj.magic _menhir_stack in
                let ((r : (
# 37 "ScillaParser.mly"
       (string)
# 1646 "ScillaParser.ml"
                )) : (
# 37 "ScillaParser.mly"
       (string)
# 1650 "ScillaParser.ml"
                )) = _v in
                let (_startpos_r_ : Lexing.position) = _startpos in
                ((let (((_menhir_stack, _menhir_s, (l : (
# 37 "ScillaParser.mly"
       (string)
# 1656 "ScillaParser.ml"
                )), _startpos_l_), _, (keys : 'tv_nonempty_list_map_access_)), _startpos__3_) = _menhir_stack in
                let _3 = () in
                let _v : 'tv_stmt = let _startpos = _startpos_l_ in
                
# 264 "ScillaParser.mly"
  ( MapUpdate(asIdL l (toLoc _startpos_l_), keys, Some (asIdL r (toLoc _startpos_r_))), toLoc _startpos )
# 1663 "ScillaParser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv716)) : 'freshtv718)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv719 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1673 "ScillaParser.ml"
                ) * Lexing.position) * _menhir_state * 'tv_nonempty_list_map_access_) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv720)) : 'freshtv722)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv723 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1684 "ScillaParser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_nonempty_list_map_access_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv724)) : 'freshtv726)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv729 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1693 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_nonempty_list_map_access_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv727 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1699 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_nonempty_list_map_access_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _startpos__1_), (l : (
# 37 "ScillaParser.mly"
       (string)
# 1704 "ScillaParser.ml"
        )), _startpos_l_), _, (keys : 'tv_nonempty_list_map_access_)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_stmt = let _startpos = _startpos__1_ in
        
# 266 "ScillaParser.mly"
  ( MapUpdate(asIdL l (toLoc _startpos_l_), keys, None), toLoc _startpos )
# 1711 "ScillaParser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv728)) : 'freshtv730)
    | _ ->
        _menhir_fail ()

and _menhir_reduce37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_ident_ = 
# 211 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 1722 "ScillaParser.ml"
     in
    _menhir_goto_list_ident_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_nonempty_list_ident_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_ident_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv693 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1734 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_ident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv691 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1742 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((args : 'tv_nonempty_list_ident_) : 'tv_nonempty_list_ident_) = _v in
        ((let (_menhir_stack, _menhir_s, (f : (
# 37 "ScillaParser.mly"
       (string)
# 1749 "ScillaParser.ml"
        )), _startpos_f_) = _menhir_stack in
        let _v : 'tv_simple_exp = let _startpos = _startpos_f_ in
        
# 151 "ScillaParser.mly"
  ( (App ((Ident (f, toLoc _startpos)), args), toLoc _startpos ) )
# 1755 "ScillaParser.ml"
         in
        _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv692)) : 'freshtv694)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv697 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_ident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv695 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_nonempty_list_ident_) : 'tv_nonempty_list_ident_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
        let _v : 'tv_nonempty_list_ident_ = 
# 223 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 1771 "ScillaParser.ml"
         in
        _menhir_goto_nonempty_list_ident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv696)) : 'freshtv698)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv701) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_ident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv699) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((args : 'tv_nonempty_list_ident_) : 'tv_nonempty_list_ident_) = _v in
        ((let _v : 'tv_builtin_args = 
# 230 "ScillaParser.mly"
                              ( args )
# 1786 "ScillaParser.ml"
         in
        _menhir_goto_builtin_args _menhir_env _menhir_stack _menhir_s _v) : 'freshtv700)) : 'freshtv702)
    | _ ->
        _menhir_fail ()

and _menhir_goto_msg_entry : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_msg_entry -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv689 * _menhir_state * 'tv_msg_entry) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv683 * _menhir_state * 'tv_msg_entry) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv684)
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv685 * _menhir_state * 'tv_msg_entry) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_msg_entry)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_ = 
# 241 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [ x ] )
# 1819 "ScillaParser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_msg_entry_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv686)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv687 * _menhir_state * 'tv_msg_entry) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv688)) : 'freshtv690)

and _menhir_goto_list_libentry_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_libentry_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv677 * _menhir_state * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 1838 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_libentry_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv675 * _menhir_state * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 1846 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ls : 'tv_list_libentry_) : 'tv_list_libentry_) = _v in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), (n : (
# 38 "ScillaParser.mly"
       (string)
# 1853 "ScillaParser.ml"
        )), _startpos_n_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_library = let _startpos = _startpos__1_ in
        
# 322 "ScillaParser.mly"
  ( {lname = asIdL n (toLoc _startpos);
     lentries = ls } )
# 1861 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv673) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_library) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState6 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv657 * _menhir_state * 'tv_library) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv655 * _menhir_state * 'tv_library) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_library)) = _menhir_stack in
            let _v : 'tv_option_library_ = 
# 116 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( Some x )
# 1878 "ScillaParser.ml"
             in
            _menhir_goto_option_library_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv656)) : 'freshtv658)
        | MenhirState225 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv671 * _menhir_state * 'tv_library) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv667 * _menhir_state * 'tv_library) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv665 * _menhir_state * 'tv_library) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (l : 'tv_library)) = _menhir_stack in
                let _2 = () in
                let _v : (
# 108 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.library)
# 1897 "ScillaParser.ml"
                ) = 
# 326 "ScillaParser.mly"
                   ( l )
# 1901 "ScillaParser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv663) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 108 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.library)
# 1909 "ScillaParser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv661) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 108 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.library)
# 1917 "ScillaParser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv659) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((_1 : (
# 108 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.library)
# 1925 "ScillaParser.ml"
                )) : (
# 108 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.library)
# 1929 "ScillaParser.ml"
                )) = _v in
                (Obj.magic _1 : 'freshtv660)) : 'freshtv662)) : 'freshtv664)) : 'freshtv666)) : 'freshtv668)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv669 * _menhir_state * 'tv_library) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv670)) : 'freshtv672)
        | _ ->
            _menhir_fail ()) : 'freshtv674)) : 'freshtv676)) : 'freshtv678)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv681 * _menhir_state * 'tv_libentry) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_libentry_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv679 * _menhir_state * 'tv_libentry) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_libentry_) : 'tv_list_libentry_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_libentry)) = _menhir_stack in
        let _v : 'tv_list_libentry_ = 
# 213 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 1954 "ScillaParser.ml"
         in
        _menhir_goto_list_libentry_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv680)) : 'freshtv682)
    | _ ->
        _menhir_fail ()

and _menhir_reduce45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_ = 
# 211 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 1965 "ScillaParser.ml"
     in
    _menhir_goto_list_transition_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run157 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv647) = Obj.magic _menhir_stack in
        let (_v : (
# 38 "ScillaParser.mly"
       (string)
# 1981 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv645) = Obj.magic _menhir_stack in
        let ((c : (
# 38 "ScillaParser.mly"
       (string)
# 1990 "ScillaParser.ml"
        )) : (
# 38 "ScillaParser.mly"
       (string)
# 1994 "ScillaParser.ml"
        )) = _v in
        let (_startpos_c_ : Lexing.position) = _startpos in
        ((let _v : 'tv_trans_id = 
# 299 "ScillaParser.mly"
          ( asIdL c (toLoc _startpos_c_) )
# 2000 "ScillaParser.ml"
         in
        _menhir_goto_trans_id _menhir_env _menhir_stack _v) : 'freshtv646)) : 'freshtv648)
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv651) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 2009 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv649) = Obj.magic _menhir_stack in
        let ((i : (
# 37 "ScillaParser.mly"
       (string)
# 2018 "ScillaParser.ml"
        )) : (
# 37 "ScillaParser.mly"
       (string)
# 2022 "ScillaParser.ml"
        )) = _v in
        let (_startpos_i_ : Lexing.position) = _startpos in
        ((let _v : 'tv_trans_id = 
# 300 "ScillaParser.mly"
         ( asIdL i (toLoc _startpos_i_) )
# 2028 "ScillaParser.ml"
         in
        _menhir_goto_trans_id _menhir_env _menhir_stack _v) : 'freshtv650)) : 'freshtv652)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv653 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv654)

and _menhir_goto_list_stmt_pm_clause_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_stmt_pm_clause_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState204 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv635 * _menhir_state * 'tv_stmt_pm_clause) * _menhir_state * 'tv_list_stmt_pm_clause_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv633 * _menhir_state * 'tv_stmt_pm_clause) * _menhir_state * 'tv_list_stmt_pm_clause_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_stmt_pm_clause)), _, (xs : 'tv_list_stmt_pm_clause_)) = _menhir_stack in
        let _v : 'tv_list_stmt_pm_clause_ = 
# 213 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 2052 "ScillaParser.ml"
         in
        _menhir_goto_list_stmt_pm_clause_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv634)) : 'freshtv636)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv643 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 2060 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_list_stmt_pm_clause_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv639 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 2070 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_list_stmt_pm_clause_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv637 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 2077 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_list_stmt_pm_clause_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), (x : (
# 37 "ScillaParser.mly"
       (string)
# 2082 "ScillaParser.ml"
            )), _startpos_x_), _, (cs : 'tv_list_stmt_pm_clause_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_stmt = let _startpos = _startpos__1_ in
            
# 271 "ScillaParser.mly"
  ( (MatchStmt (Ident (x, toLoc _startpos_x_), cs), toLoc _startpos)  )
# 2091 "ScillaParser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv638)) : 'freshtv640)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv641 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 2101 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_list_stmt_pm_clause_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv642)) : 'freshtv644)
    | _ ->
        _menhir_fail ()

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv631) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_pattern = 
# 212 "ScillaParser.mly"
             ( Wildcard )
# 2118 "ScillaParser.ml"
     in
    _menhir_goto_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv632)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 2125 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv629) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 37 "ScillaParser.mly"
       (string)
# 2135 "ScillaParser.ml"
    )) : (
# 37 "ScillaParser.mly"
       (string)
# 2139 "ScillaParser.ml"
    )) = _v in
    let (_startpos_x_ : Lexing.position) = _startpos in
    ((let _v : 'tv_pattern = let _startpos = _startpos_x_ in
    
# 213 "ScillaParser.mly"
         (Binder (Ident (x, toLoc _startpos)))
# 2146 "ScillaParser.ml"
     in
    _menhir_goto_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv630)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "ScillaParser.mly"
       (string)
# 2153 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | UNDERSCORE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | ARROW | RPAREN ->
        _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_goto_separated_nonempty_list_SEMICOLON_stmt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_stmt_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv623 * _menhir_state * 'tv_stmt)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_stmt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv621 * _menhir_state * 'tv_stmt)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_stmt_) : 'tv_separated_nonempty_list_SEMICOLON_stmt_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_stmt)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_stmt_ = 
# 243 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 2192 "ScillaParser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_stmt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv622)) : 'freshtv624)
    | MenhirState229 | MenhirState163 | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv627) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_stmt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv625) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_stmt_) : 'tv_separated_nonempty_list_SEMICOLON_stmt_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__ = 
# 144 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x )
# 2207 "ScillaParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_stmt__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv626)) : 'freshtv628)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_param_pair_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_param_pair_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState161 | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv615) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_param_pair_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv613) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_param_pair_) : 'tv_separated_nonempty_list_COMMA_param_pair_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_param_pair__ = 
# 144 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x )
# 2228 "ScillaParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_param_pair__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv614)) : 'freshtv616)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv619 * _menhir_state * 'tv_param_pair)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_param_pair_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv617 * _menhir_state * 'tv_param_pair)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_param_pair_) : 'tv_separated_nonempty_list_COMMA_param_pair_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_param_pair)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_param_pair_ = 
# 243 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 2245 "ScillaParser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_param_pair_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv618)) : 'freshtv620)
    | _ ->
        _menhir_fail ()

and _menhir_run141 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 2254 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv609 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2266 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FORALL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | LPAREN ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | MAP ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState142
        | TID _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142) : 'freshtv610)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv611 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2292 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv612)

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_typ -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORALL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LPAREN ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | MAP ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | TID _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_list_targ_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_targ_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv589 * _menhir_state * 'tv_targ) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv587 * _menhir_state * 'tv_targ) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_targ)), _, (xs : 'tv_list_targ_)) = _menhir_stack in
        let _v : 'tv_list_targ_ = 
# 213 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 2336 "ScillaParser.ml"
         in
        _menhir_goto_list_targ_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv588)) : 'freshtv590)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv593 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2344 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv591 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2350 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (d : (
# 38 "ScillaParser.mly"
       (string)
# 2355 "ScillaParser.ml"
        )), _startpos_d_), _, (targs : 'tv_list_targ_)) = _menhir_stack in
        let _v : 'tv_typ = 
# 117 "ScillaParser.mly"
  ( match targs with
    | [] -> to_type d                       
    | _ -> ADT (d, targs)
  )
# 2363 "ScillaParser.ml"
         in
        _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv592)) : 'freshtv594)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv607 * Lexing.position) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv603 * Lexing.position) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv601 * Lexing.position) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _startpos__1_), _, (ts : 'tv_list_targ_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ctargs = 
# 206 "ScillaParser.mly"
                                  ( ts )
# 2384 "ScillaParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv599) = _menhir_stack in
            let (_v : 'tv_ctargs) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv597) = Obj.magic _menhir_stack in
            let (_v : 'tv_ctargs) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv595) = Obj.magic _menhir_stack in
            let ((x : 'tv_ctargs) : 'tv_ctargs) = _v in
            ((let _v : 'tv_option_ctargs_ = 
# 116 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( Some x )
# 2398 "ScillaParser.ml"
             in
            _menhir_goto_option_ctargs_ _menhir_env _menhir_stack _v) : 'freshtv596)) : 'freshtv598)) : 'freshtv600)) : 'freshtv602)) : 'freshtv604)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv605 * Lexing.position) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv606)) : 'freshtv608)
    | _ ->
        _menhir_fail ()

and _menhir_goto_targ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_targ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv563 * _menhir_state) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | MAP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | TID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv564)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv567 * _menhir_state) * _menhir_state * 'tv_targ) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv565 * _menhir_state) * _menhir_state * 'tv_targ) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (k : 'tv_targ)), _, (v : 'tv_targ)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_typ = 
# 121 "ScillaParser.mly"
                         ( MapType (k, v) )
# 2443 "ScillaParser.ml"
         in
        _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv566)) : 'freshtv568)
    | MenhirState94 | MenhirState56 | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv569 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | MAP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | TID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | COMMA | EOF | EQ | FORALL | RBRACE | RPAREN | TARROW ->
            _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv570)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv571 * _menhir_state) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | MAP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | TID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv572)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv575 * _menhir_state) * _menhir_state * 'tv_targ) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv573 * _menhir_state) * _menhir_state * 'tv_targ) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (k : 'tv_targ)), _, (v : 'tv_targ)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_targ = 
# 131 "ScillaParser.mly"
                         ( MapType (k, v) )
# 2494 "ScillaParser.ml"
         in
        _menhir_goto_targ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv574)) : 'freshtv576)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv577 * _menhir_state * Lexing.position) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MAP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | TID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv578)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv581 * _menhir_state * Lexing.position) * _menhir_state * 'tv_targ) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv579 * _menhir_state * Lexing.position) * _menhir_state * 'tv_targ) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _startpos__1_), _, (kt : 'tv_targ)), _, (vt : 'tv_targ)) = _menhir_stack in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _v : 'tv_lit = 
# 196 "ScillaParser.mly"
(
  Map ((kt, vt), Hashtbl.create 4) (* 4 is arbitrary here. *)
  (* if isPrimType kt
   * then Map ((kt, vt), [])
   * else
   *   raise (SyntaxError (Core.sprintf "Non-primitive type (%s) cannot be a map key."
   *                    (pp_typ kt))) *)
)
# 2533 "ScillaParser.ml"
         in
        _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv580)) : 'freshtv582)
    | MenhirState110 | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv585 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | MAP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | TID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | AT | BAR | BLOCK | BUILTIN | CONTRACT | EMP | END | EOF | FIELD | FUN | HEXLIT _ | ID _ | IN | LBRACE | LET | MATCH | SEMICOLON | STRING _ | TFUN | TRANSITION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv583 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_targ)) = _menhir_stack in
            let _v : 'tv_nonempty_list_targ_ = 
# 221 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [ x ] )
# 2557 "ScillaParser.ml"
             in
            _menhir_goto_nonempty_list_targ_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv584)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv586)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_library_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_library_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv561 * 'tv_imports) * _menhir_state * 'tv_option_library_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONTRACT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv557) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv553) = Obj.magic _menhir_stack in
            let (_v : (
# 38 "ScillaParser.mly"
       (string)
# 2587 "ScillaParser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv549) * (
# 38 "ScillaParser.mly"
       (string)
# 2599 "ScillaParser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RPAREN ->
                    _menhir_reduce53 _menhir_env (Obj.magic _menhir_stack) MenhirState140
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140) : 'freshtv550)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv551) * (
# 38 "ScillaParser.mly"
       (string)
# 2619 "ScillaParser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv552)) : 'freshtv554)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv555) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv556)) : 'freshtv558)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv559 * 'tv_imports) * _menhir_state * 'tv_option_library_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv560)) : 'freshtv562)

and _menhir_goto_list_cident_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_cident_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv543) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_cident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv541) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((els : 'tv_list_cident_) : 'tv_list_cident_) = _v in
        ((let _1 = () in
        let _v : 'tv_imports = 
# 329 "ScillaParser.mly"
                             ( els )
# 2652 "ScillaParser.ml"
         in
        _menhir_goto_imports _menhir_env _menhir_stack _v) : 'freshtv542)) : 'freshtv544)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv547 * _menhir_state * 'tv_cident) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_cident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv545 * _menhir_state * 'tv_cident) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_cident_) : 'tv_list_cident_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_cident)) = _menhir_stack in
        let _v : 'tv_list_cident_ = 
# 213 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 2668 "ScillaParser.ml"
         in
        _menhir_goto_list_cident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv546)) : 'freshtv548)
    | _ ->
        _menhir_fail ()

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_exp_pm_clause_ = 
# 211 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 2679 "ScillaParser.ml"
     in
    _menhir_goto_list_exp_pm_clause_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNDERSCORE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_msg_entry__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv539 * _menhir_state * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv535 * _menhir_state * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv533 * _menhir_state * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), _, (xs : 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_simple_exp = let es = 
# 232 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( xs )
# 2720 "ScillaParser.ml"
         in
        let _startpos = _startpos__1_ in
        
# 159 "ScillaParser.mly"
  ( (Message es, toLoc _startpos) )
# 2726 "ScillaParser.ml"
         in
        _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv534)) : 'freshtv536)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv537 * _menhir_state * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv538)) : 'freshtv540)

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 2740 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv529 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2752 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BLOCK ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv523 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2764 "ScillaParser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState39 in
            let (_v : (
# 38 "ScillaParser.mly"
       (string)
# 2770 "ScillaParser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NUMLIT _v ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
            | RBRACE | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv519 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2784 "ScillaParser.ml"
                ) * Lexing.position)) * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2788 "ScillaParser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (i : (
# 37 "ScillaParser.mly"
       (string)
# 2793 "ScillaParser.ml"
                )), _startpos_i_), _, (c : (
# 38 "ScillaParser.mly"
       (string)
# 2797 "ScillaParser.ml"
                )), _startpos_c_) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_msg_entry = 
# 226 "ScillaParser.mly"
                          ( i, MTag c )
# 2803 "ScillaParser.ml"
                 in
                _menhir_goto_msg_entry _menhir_env _menhir_stack _menhir_s _v) : 'freshtv520)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv521 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2813 "ScillaParser.ml"
                ) * Lexing.position)) * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2817 "ScillaParser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv522)) : 'freshtv524)
        | EMP ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXLIT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv527 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2830 "ScillaParser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState39 in
            let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 2836 "ScillaParser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv525 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2844 "ScillaParser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((v : (
# 37 "ScillaParser.mly"
       (string)
# 2850 "ScillaParser.ml"
            )) : (
# 37 "ScillaParser.mly"
       (string)
# 2854 "ScillaParser.ml"
            )) = _v in
            let (_startpos_v_ : Lexing.position) = _startpos in
            ((let (_menhir_stack, _menhir_s, (i : (
# 37 "ScillaParser.mly"
       (string)
# 2860 "ScillaParser.ml"
            )), _startpos_i_) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_msg_entry = 
# 227 "ScillaParser.mly"
                          ( i,  MVar (asIdL v (toLoc _startpos_v_)) )
# 2866 "ScillaParser.ml"
             in
            _menhir_goto_msg_entry _menhir_env _menhir_stack _menhir_s _v) : 'freshtv526)) : 'freshtv528)
        | STRING _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv530)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv531 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2882 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv532)

and _menhir_goto_atomic_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atomic_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv517) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_atomic_exp) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv515) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((a : 'tv_atomic_exp) : 'tv_atomic_exp) = _v in
    ((let _v : 'tv_simple_exp = 
# 153 "ScillaParser.mly"
                 (a)
# 2900 "ScillaParser.ml"
     in
    _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv516)) : 'freshtv518)

and _menhir_goto_exps : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2907 "ScillaParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState220 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv509) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2918 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv507) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2926 "ScillaParser.ml"
        )) : (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2930 "ScillaParser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv508)) : 'freshtv510)
    | MenhirState223 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv513 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2940 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv511 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((es : (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2948 "ScillaParser.ml"
        )) : (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2952 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_exp)) = _menhir_stack in
        let _v : (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2958 "ScillaParser.ml"
        ) = 
# 244 "ScillaParser.mly"
                     ( e :: es )
# 2962 "ScillaParser.ml"
         in
        _menhir_goto_exps _menhir_env _menhir_stack _menhir_s _v) : 'freshtv512)) : 'freshtv514)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_ctargs_ : _menhir_env -> 'ttv_tail -> 'tv_option_ctargs_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv505 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2975 "ScillaParser.ml"
    ) * Lexing.position) * 'tv_option_ctargs_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | AT | BAR | BLOCK | BUILTIN | CID _ | CONTRACT | EMP | END | EOF | FIELD | FUN | HEXLIT _ | IN | LBRACE | LET | MATCH | SEMICOLON | STRING _ | TFUN | TRANSITION ->
        _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv506)

and _menhir_run71 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2992 "ScillaParser.ml"
) * Lexing.position -> (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 2996 "ScillaParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv503 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 3004 "ScillaParser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let ((n : (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 3009 "ScillaParser.ml"
    )) : (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 3013 "ScillaParser.ml"
    )) = _v in
    ((let (_menhir_stack, _menhir_s, (i : (
# 38 "ScillaParser.mly"
       (string)
# 3018 "ScillaParser.ml"
    )), _startpos_i_) = _menhir_stack in
    let _startpos = _startpos_i_ in
    let _v : 'tv_lit = 
# 186 "ScillaParser.mly"
               (
    let string_of_n = Big_int.string_of_big_int n in
    build_prim_literal_exn (to_type i) string_of_n
  )
# 3027 "ScillaParser.ml"
     in
    _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv504)

and _menhir_goto_builtin_args : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_builtin_args -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv501 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 3037 "ScillaParser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_builtin_args) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv499 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 3045 "ScillaParser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((xs : 'tv_builtin_args) : 'tv_builtin_args) = _v in
    ((let ((_menhir_stack, _menhir_s, _startpos__1_), (b : (
# 37 "ScillaParser.mly"
       (string)
# 3052 "ScillaParser.ml"
    )), _startpos_b_) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_simple_exp = let _startpos = _startpos__1_ in
    
# 156 "ScillaParser.mly"
  ( (Builtin ((Ident (b, toLoc _startpos_b_)), xs), toLoc _startpos) )
# 3059 "ScillaParser.ml"
     in
    _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)

and _menhir_run82 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 3066 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv497) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 37 "ScillaParser.mly"
       (string)
# 3076 "ScillaParser.ml"
    )) : (
# 37 "ScillaParser.mly"
       (string)
# 3080 "ScillaParser.ml"
    )) = _v in
    let (_startpos_i_ : Lexing.position) = _startpos in
    ((let _v : 'tv_ident = let _startpos = _startpos_i_ in
    
# 234 "ScillaParser.mly"
         ( Ident(i, toLoc _startpos) )
# 3087 "ScillaParser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv495) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_ident) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState103 | MenhirState84 | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | AT | BAR | BLOCK | BUILTIN | CID _ | CONTRACT | EMP | END | EOF | FIELD | FUN | HEXLIT _ | IN | LBRACE | LET | MATCH | SEMICOLON | STRING _ | TFUN | TRANSITION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv475 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
            let _v : 'tv_nonempty_list_ident_ = 
# 221 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [ x ] )
# 3110 "ScillaParser.ml"
             in
            _menhir_goto_nonempty_list_ident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv476)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv478)
    | MenhirState99 | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv479 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | AT | BAR | BLOCK | BUILTIN | CID _ | CONTRACT | EMP | END | EOF | FIELD | FUN | HEXLIT _ | IN | LBRACE | LET | MATCH | SEMICOLON | STRING _ | TFUN | TRANSITION ->
            _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv480)
    | MenhirState173 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv493 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSQB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv489 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv487 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (i : 'tv_ident)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_map_access = 
# 209 "ScillaParser.mly"
                        ( i )
# 3149 "ScillaParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv485) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_map_access) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_map_access) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LSQB ->
                _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | ASSIGN | BAR | END | EOF | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv481 * _menhir_state * 'tv_map_access) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_map_access)) = _menhir_stack in
                let _v : 'tv_nonempty_list_map_access_ = 
# 221 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [ x ] )
# 3170 "ScillaParser.ml"
                 in
                _menhir_goto_nonempty_list_map_access_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv482)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181) : 'freshtv484)) : 'freshtv486)) : 'freshtv488)) : 'freshtv490)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv491 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv492)) : 'freshtv494)
    | _ ->
        _menhir_fail ()) : 'freshtv496)) : 'freshtv498)

and _menhir_goto_lit : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lit -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv469 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 3195 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_lit) = _v in
        let (_startpos : Lexing.position) = _startpos in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv467 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 3204 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((l : 'tv_lit) : 'tv_lit) = _v in
        let (_startpos_l_ : Lexing.position) = _startpos in
        ((let (_menhir_stack, _menhir_s, (i : (
# 37 "ScillaParser.mly"
       (string)
# 3212 "ScillaParser.ml"
        )), _startpos_i_) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_msg_entry = 
# 225 "ScillaParser.mly"
                          ( i, MLit l )
# 3218 "ScillaParser.ml"
         in
        _menhir_goto_msg_entry _menhir_env _menhir_stack _menhir_s _v) : 'freshtv468)) : 'freshtv470)
    | MenhirState223 | MenhirState220 | MenhirState176 | MenhirState154 | MenhirState11 | MenhirState14 | MenhirState33 | MenhirState123 | MenhirState125 | MenhirState36 | MenhirState118 | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_lit) = _v in
        let (_startpos : Lexing.position) = _startpos in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv471) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((l : 'tv_lit) : 'tv_lit) = _v in
        let (_startpos_l_ : Lexing.position) = _startpos in
        ((let _v : 'tv_atomic_exp = let _startpos = _startpos_l_ in
        
# 180 "ScillaParser.mly"
               ( (Literal l, toLoc _startpos) )
# 3236 "ScillaParser.ml"
         in
        _menhir_goto_atomic_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)) : 'freshtv474)
    | _ ->
        _menhir_fail ()

and _menhir_reduce39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_libentry_ = 
# 211 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 3247 "ScillaParser.ml"
     in
    _menhir_goto_list_libentry_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 3263 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv459 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 3275 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv460)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv461 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 3319 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv462)) : 'freshtv464)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv466)

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_stmt__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv425 * _menhir_state) * _menhir_state * 'tv_pattern)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv423 * _menhir_state) * _menhir_state * 'tv_pattern)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__) : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__) = _v in
        ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_pattern)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_stmt_pm_clause = let ss = 
# 232 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( xs )
# 3349 "ScillaParser.ml"
         in
        
# 275 "ScillaParser.mly"
                                       ( p, ss )
# 3354 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stmt_pm_clause) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state * 'tv_stmt_pm_clause) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BAR ->
            _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState204
        | END ->
            _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) MenhirState204
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState204) : 'freshtv420)) : 'freshtv422)) : 'freshtv424)) : 'freshtv426)
    | MenhirState229 | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv455) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((xs : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__) : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__) = _v in
        ((let _v : 'tv_stmts = let ss = 
# 232 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( xs )
# 3386 "ScillaParser.ml"
         in
        
# 277 "ScillaParser.mly"
                                       ( ss )
# 3391 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv453) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stmts) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState163 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv437 * _menhir_state) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | END ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv433 * _menhir_state) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv431 * _menhir_state) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), (t : 'tv_trans_id)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_param_pair__)), _, (ss : 'tv_stmts)) = _menhir_stack in
                let _7 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_transition = let params = 
# 232 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( xs )
# 3419 "ScillaParser.ml"
                 in
                
# 294 "ScillaParser.mly"
  ( { tname = t;
      tparams = params;
      tbody = ss } )
# 3426 "ScillaParser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv429) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_transition) = _v in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv427 * _menhir_state * 'tv_transition) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | TRANSITION ->
                    _menhir_run157 _menhir_env (Obj.magic _menhir_stack) MenhirState211
                | EOF ->
                    _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) MenhirState211
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState211) : 'freshtv428)) : 'freshtv430)) : 'freshtv432)) : 'freshtv434)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv435 * _menhir_state) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)) : 'freshtv438)
        | MenhirState229 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv451 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv447 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv445 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (ss : 'tv_stmts)) = _menhir_stack in
                let _2 = () in
                let _v : (
# 106 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.stmt_annot list)
# 3469 "ScillaParser.ml"
                ) = 
# 280 "ScillaParser.mly"
                  ( ss )
# 3473 "ScillaParser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv443) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 106 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.stmt_annot list)
# 3481 "ScillaParser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv441) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 106 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.stmt_annot list)
# 3489 "ScillaParser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv439) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((_1 : (
# 106 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.stmt_annot list)
# 3497 "ScillaParser.ml"
                )) : (
# 106 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.stmt_annot list)
# 3501 "ScillaParser.ml"
                )) = _v in
                (Obj.magic _1 : 'freshtv440)) : 'freshtv442)) : 'freshtv444)) : 'freshtv446)) : 'freshtv448)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv449 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
        | _ ->
            _menhir_fail ()) : 'freshtv454)) : 'freshtv456)) : 'freshtv458)
    | _ ->
        _menhir_fail ()

and _menhir_reduce41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_stmt_pm_clause_ = 
# 211 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 3521 "ScillaParser.ml"
     in
    _menhir_goto_list_stmt_pm_clause_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run169 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNDERSCORE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState169
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169

and _menhir_run173 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState173

and _menhir_goto_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmt -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv417 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ACCEPT ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DELETE ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EVENT ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MATCH ->
            _menhir_run166 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SEND ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState200) : 'freshtv412)
    | BAR | END | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_stmt)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_stmt_ = 
# 241 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [ x ] )
# 3592 "ScillaParser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_stmt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)) : 'freshtv418)

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_typ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv353 * _menhir_state) * (
# 39 "ScillaParser.mly"
       (string)
# 3612 "ScillaParser.ml"
        ))) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TARROW ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | CID _ | COMMA | EOF | EQ | FORALL | LPAREN | MAP | RPAREN | TID _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv351 * _menhir_state) * (
# 39 "ScillaParser.mly"
       (string)
# 3624 "ScillaParser.ml"
            ))) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (tv : (
# 39 "ScillaParser.mly"
       (string)
# 3629 "ScillaParser.ml"
            ))), _, (t : 'tv_typ)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_typ = 
# 124 "ScillaParser.mly"
                                     (PolyFun (tv, t))
# 3636 "ScillaParser.ml"
             in
            _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv354)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv357 * _menhir_state * 'tv_typ) * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TARROW ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | CID _ | COMMA | EOF | EQ | FORALL | LPAREN | MAP | RPAREN | TID _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv355 * _menhir_state * 'tv_typ) * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_typ)), _), _, (t2 : 'tv_typ)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_typ = 
# 122 "ScillaParser.mly"
                              ( FunType (t1, t2) )
# 3659 "ScillaParser.ml"
             in
            _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv358)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv363 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv361 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState62 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv359 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_typ)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_typ = 
# 123 "ScillaParser.mly"
                           ( t )
# 3686 "ScillaParser.ml"
             in
            _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)
        | TARROW ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv364)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv369 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv367 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState64 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv365 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_typ)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_targ = 
# 128 "ScillaParser.mly"
                           ( t )
# 3715 "ScillaParser.ml"
             in
            _menhir_goto_targ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv366)) : 'freshtv368)
        | TARROW ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv370)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv377 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 3729 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv375 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 3739 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState90 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv371 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 3751 "ScillaParser.ml"
                ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AT ->
                    _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | BLOCK ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | BUILTIN ->
                    _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | CID _v ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | EMP ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FUN ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | HEXLIT _v ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | ID _v ->
                    _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LBRACE ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LET ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MATCH ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | STRING _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TFUN ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv372)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv373 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 3793 "ScillaParser.ml"
                ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)) : 'freshtv376)
        | TARROW ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv378)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv389) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TARROW ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv387) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (t : 'tv_typ)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_type_annot = 
# 240 "ScillaParser.mly"
                 ( t )
# 3819 "ScillaParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385) = _menhir_stack in
            let (_v : 'tv_type_annot) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv383 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 3829 "ScillaParser.ml"
            ) * Lexing.position) * 'tv_type_annot) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv379 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 3839 "ScillaParser.ml"
                ) * Lexing.position) * 'tv_type_annot) = Obj.magic _menhir_stack in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AT ->
                    _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | BLOCK ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | BUILTIN ->
                    _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | CID _v ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | EMP ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FUN ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | HEXLIT _v ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | ID _v ->
                    _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LBRACE ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MATCH ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | STRING _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TFUN ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv380)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv381 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 3881 "ScillaParser.ml"
                ) * Lexing.position) * 'tv_type_annot) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)) : 'freshtv386)) : 'freshtv388)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv390)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv403 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 3894 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TARROW ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | COMMA | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv401 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 3906 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (n : (
# 37 "ScillaParser.mly"
       (string)
# 3911 "ScillaParser.ml"
            )), _startpos_n_), _, (t : 'tv_typ)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_param_pair = 
# 287 "ScillaParser.mly"
                         ( asIdL n (toLoc _startpos_n_), t )
# 3917 "ScillaParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv399) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_param_pair) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv397 * _menhir_state * 'tv_param_pair) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_param_pair) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState146) : 'freshtv392)
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv393 * _menhir_state * 'tv_param_pair) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_param_pair)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_COMMA_param_pair_ = 
# 241 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [ x ] )
# 3948 "ScillaParser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_param_pair_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv394)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv395 * _menhir_state * 'tv_param_pair) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)) : 'freshtv398)) : 'freshtv400)) : 'freshtv402)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv404)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv407 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 3967 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv405 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 3977 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState153 in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154) : 'freshtv406)
        | TARROW ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153) : 'freshtv408)
    | MenhirState236 | MenhirState233 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EOF ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | FORALL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | LPAREN ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | MAP ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | TARROW ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | TID _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState236) : 'freshtv410)
    | _ ->
        _menhir_fail ()

and _menhir_goto_types : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 105 "ScillaParser.mly"
       (Syntax.typ list)
# 4051 "ScillaParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState233 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 105 "ScillaParser.mly"
       (Syntax.typ list)
# 4062 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv343) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 105 "ScillaParser.mly"
       (Syntax.typ list)
# 4070 "ScillaParser.ml"
        )) : (
# 105 "ScillaParser.mly"
       (Syntax.typ list)
# 4074 "ScillaParser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv344)) : 'freshtv346)
    | MenhirState236 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv349 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 105 "ScillaParser.mly"
       (Syntax.typ list)
# 4084 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv347 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : (
# 105 "ScillaParser.mly"
       (Syntax.typ list)
# 4092 "ScillaParser.ml"
        )) : (
# 105 "ScillaParser.mly"
       (Syntax.typ list)
# 4096 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (t : 'tv_typ)) = _menhir_stack in
        let _v : (
# 105 "ScillaParser.mly"
       (Syntax.typ list)
# 4102 "ScillaParser.ml"
        ) = 
# 248 "ScillaParser.mly"
                      (t :: ts)
# 4106 "ScillaParser.ml"
         in
        _menhir_goto_types _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)) : 'freshtv350)
    | _ ->
        _menhir_fail ()

and _menhir_reduce43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_targ_ = 
# 211 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 4117 "ScillaParser.ml"
     in
    _menhir_goto_list_targ_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 39 "ScillaParser.mly"
       (string)
# 4124 "ScillaParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv341) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((t : (
# 39 "ScillaParser.mly"
       (string)
# 4134 "ScillaParser.ml"
    )) : (
# 39 "ScillaParser.mly"
       (string)
# 4138 "ScillaParser.ml"
    )) = _v in
    ((let _v : 'tv_targ = 
# 130 "ScillaParser.mly"
           ( TypeVar t )
# 4143 "ScillaParser.ml"
     in
    _menhir_goto_targ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | MAP ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | TID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORALL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPAREN ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MAP ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | TID _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "ScillaParser.mly"
       (string)
# 4190 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv339) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((d : (
# 38 "ScillaParser.mly"
       (string)
# 4200 "ScillaParser.ml"
    )) : (
# 38 "ScillaParser.mly"
       (string)
# 4204 "ScillaParser.ml"
    )) = _v in
    let (_startpos_d_ : Lexing.position) = _startpos in
    ((let _v : 'tv_targ = 
# 129 "ScillaParser.mly"
           ( to_type d )
# 4210 "ScillaParser.ml"
     in
    _menhir_goto_targ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)

and _menhir_goto_imports : _menhir_env -> 'ttv_tail -> 'tv_imports -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv337 * 'tv_imports) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LIBRARY ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | CONTRACT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv335) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState6 in
        ((let _v : 'tv_option_library_ = 
# 114 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( None )
# 4231 "ScillaParser.ml"
         in
        _menhir_goto_option_library_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv338)

and _menhir_reduce31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_cident_ = 
# 211 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 4244 "ScillaParser.ml"
     in
    _menhir_goto_list_cident_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "ScillaParser.mly"
       (string)
# 4251 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv333) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : (
# 38 "ScillaParser.mly"
       (string)
# 4261 "ScillaParser.ml"
    )) : (
# 38 "ScillaParser.mly"
       (string)
# 4265 "ScillaParser.ml"
    )) = _v in
    let (_startpos_c_ : Lexing.position) = _startpos in
    ((let _v : 'tv_cident = let _startpos = _startpos_c_ in
    
# 237 "ScillaParser.mly"
          ( Ident(c, toLoc _startpos) )
# 4272 "ScillaParser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv331) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_cident) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_cident) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | CONTRACT | LIBRARY ->
        _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv330)) : 'freshtv332)) : 'freshtv334)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 39 "ScillaParser.mly"
       (string)
# 4305 "ScillaParser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv321 * _menhir_state * Lexing.position) * (
# 39 "ScillaParser.mly"
       (string)
# 4316 "ScillaParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv322)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv323 * _menhir_state * Lexing.position) * (
# 39 "ScillaParser.mly"
       (string)
# 4358 "ScillaParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv327 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "ScillaParser.mly"
       (string)
# 4373 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv319) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((s : (
# 42 "ScillaParser.mly"
       (string)
# 4383 "ScillaParser.ml"
    )) : (
# 42 "ScillaParser.mly"
       (string)
# 4387 "ScillaParser.ml"
    )) = _v in
    let (_startpos_s_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos_s_ in
    let _v : 'tv_lit = 
# 194 "ScillaParser.mly"
               ( StringLit s )
# 4394 "ScillaParser.ml"
     in
    _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv320)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4410 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 4422 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BAR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | END ->
                _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv313 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 4442 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv307 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4466 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv301) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CID _v ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FORALL ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | LPAREN ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | MAP ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | TID _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv302)
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv303 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 4498 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv304)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv305 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 4540 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState37 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__ = 
# 142 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 4567 "ScillaParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_msg_entry__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run81 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 4578 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | AT | BAR | BLOCK | BUILTIN | CID _ | CONTRACT | EMP | END | EOF | FIELD | FUN | HEXLIT _ | IN | LBRACE | LET | MATCH | SEMICOLON | STRING _ | TFUN | TRANSITION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 4592 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (i : (
# 37 "ScillaParser.mly"
       (string)
# 4597 "ScillaParser.ml"
        )), _startpos_i_) = _menhir_stack in
        let _v : 'tv_atomic_exp = let _startpos = _startpos_i_ in
        
# 179 "ScillaParser.mly"
               ( (Var (Ident (i, toLoc _startpos)), toLoc _startpos) )
# 4603 "ScillaParser.ml"
         in
        _menhir_goto_atomic_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 46 "ScillaParser.mly"
       (string)
# 4614 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv295) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((h : (
# 46 "ScillaParser.mly"
       (string)
# 4624 "ScillaParser.ml"
    )) : (
# 46 "ScillaParser.mly"
       (string)
# 4628 "ScillaParser.ml"
    )) = _v in
    let (_startpos_h_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos_h_ in
    let _v : 'tv_lit = 
# 190 "ScillaParser.mly"
               ( 
  let l = String.length h in
  build_prim_literal_exn (PrimTypes.bystrx_typ ((l-1)/2)) h
)
# 4638 "ScillaParser.ml"
     in
    _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv296)

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv287 * _menhir_state * Lexing.position)) = Obj.magic _menhir_stack in
            let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4660 "ScillaParser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv283 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 4672 "ScillaParser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CID _v ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FORALL ->
                    _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | LPAREN ->
                    _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | MAP ->
                    _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | TID _v ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv284)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv285 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 4698 "ScillaParser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv289 * _menhir_state * Lexing.position)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv293 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)

and _menhir_run221 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv281) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 4726 "ScillaParser.ml"
    ) = 
# 243 "ScillaParser.mly"
      ( [] )
# 4730 "ScillaParser.ml"
     in
    _menhir_goto_exps _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | MAP ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | TID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "ScillaParser.mly"
       (string)
# 4756 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | MAP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | TID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | RBRACE ->
            _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv276)
    | NUMLIT _v ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
    | AT | BAR | BLOCK | BUILTIN | CID _ | CONTRACT | EMP | END | EOF | FIELD | FUN | HEXLIT _ | ID _ | IN | LET | MATCH | SEMICOLON | STRING _ | TFUN | TRANSITION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_ctargs_ = 
# 114 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( None )
# 4793 "ScillaParser.ml"
         in
        _menhir_goto_option_ctargs_ _menhir_env _menhir_stack _v) : 'freshtv278)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 4803 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)

and _menhir_run102 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4820 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv269) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState103 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv265 * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv263 * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_builtin_args = 
# 231 "ScillaParser.mly"
                 ( [] )
# 4849 "ScillaParser.ml"
                 in
                _menhir_goto_builtin_args _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)) : 'freshtv266)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv267 * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv272)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NUMLIT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 4883 "ScillaParser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let ((n : (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 4891 "ScillaParser.ml"
        )) : (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 4895 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _v : 'tv_lit = 
# 184 "ScillaParser.mly"
               ( build_prim_literal_exn PrimTypes.bnum_typ (Big_int.string_of_big_int n) )
# 4903 "ScillaParser.ml"
         in
        _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv258)) : 'freshtv260)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)

and _menhir_run108 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4926 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | MAP ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | TID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv254)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 38 "ScillaParser.mly"
       (string)
# 4965 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CONTRACT | EOF ->
            _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv250)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv251 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)

and _menhir_reduce57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__ = 
# 142 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 4993 "ScillaParser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_SEMICOLON_stmt__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run164 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 5009 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let ((m : (
# 37 "ScillaParser.mly"
       (string)
# 5018 "ScillaParser.ml"
        )) : (
# 37 "ScillaParser.mly"
       (string)
# 5022 "ScillaParser.ml"
        )) = _v in
        let (_startpos_m_ : Lexing.position) = _startpos in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_stmt = let _startpos = _startpos__1_ in
        
# 268 "ScillaParser.mly"
                         ( (SendMsgs (asIdL m (toLoc _startpos)), toLoc _startpos) )
# 5031 "ScillaParser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)) : 'freshtv246)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)

and _menhir_run166 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 5054 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv235 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5066 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BAR ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | END ->
                _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168) : 'freshtv236)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv237 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5086 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)) : 'freshtv240)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)

and _menhir_run172 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 5101 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5113 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState172 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv205 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5126 "ScillaParser.ml"
            ) * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 5131 "ScillaParser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv203 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5139 "ScillaParser.ml"
            ) * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            let ((r : (
# 37 "ScillaParser.mly"
       (string)
# 5144 "ScillaParser.ml"
            )) : (
# 37 "ScillaParser.mly"
       (string)
# 5148 "ScillaParser.ml"
            )) = _v in
            let (_startpos_r_ : Lexing.position) = _startpos in
            ((let ((_menhir_stack, _menhir_s, (l : (
# 37 "ScillaParser.mly"
       (string)
# 5154 "ScillaParser.ml"
            )), _startpos_l_), _, _startpos__2_) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_stmt = let _startpos = _startpos_l_ in
            
# 256 "ScillaParser.mly"
                         ( (Store (asIdL l (toLoc _startpos__2_), asIdL r (toLoc _startpos_r_)), toLoc _startpos) )
# 5161 "ScillaParser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)) : 'freshtv206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv207 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5171 "ScillaParser.ml"
            ) * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)) : 'freshtv210)
    | BIND ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5180 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState172 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv217 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5193 "ScillaParser.ml"
            ) * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv213 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5203 "ScillaParser.ml"
                ) * Lexing.position) * _menhir_state * Lexing.position)) = Obj.magic _menhir_stack in
                let (_v : (
# 38 "ScillaParser.mly"
       (string)
# 5208 "ScillaParser.ml"
                )) = _v in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv211 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5216 "ScillaParser.ml"
                ) * Lexing.position) * _menhir_state * Lexing.position)) = Obj.magic _menhir_stack in
                let ((c : (
# 38 "ScillaParser.mly"
       (string)
# 5221 "ScillaParser.ml"
                )) : (
# 38 "ScillaParser.mly"
       (string)
# 5225 "ScillaParser.ml"
                )) = _v in
                let (_startpos_c_ : Lexing.position) = _startpos in
                ((let ((_menhir_stack, _menhir_s, (l : (
# 37 "ScillaParser.mly"
       (string)
# 5231 "ScillaParser.ml"
                )), _startpos_l_), _, _startpos__2_) = _menhir_stack in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_stmt = let _startpos = _startpos_l_ in
                
# 258 "ScillaParser.mly"
                         ( (ReadFromBC (asIdL l (toLoc _startpos__2_), c), toLoc _startpos) )
# 5239 "ScillaParser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)) : 'freshtv214)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv215 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5249 "ScillaParser.ml"
                ) * Lexing.position) * _menhir_state * Lexing.position)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)) : 'freshtv218)
        | EXISTS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv223 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5258 "ScillaParser.ml"
            ) * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv219 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5268 "ScillaParser.ml"
                ) * Lexing.position) * _menhir_state * Lexing.position)) = Obj.magic _menhir_stack in
                let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 5273 "ScillaParser.ml"
                )) = _v in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LSQB ->
                    _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState184
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184) : 'freshtv220)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv221 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5293 "ScillaParser.ml"
                ) * Lexing.position) * _menhir_state * Lexing.position)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)) : 'freshtv224)
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv227 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5302 "ScillaParser.ml"
            ) * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 5307 "ScillaParser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LSQB ->
                _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | BAR | END | EOF | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv225 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5321 "ScillaParser.ml"
                ) * Lexing.position) * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5325 "ScillaParser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s, (l : (
# 37 "ScillaParser.mly"
       (string)
# 5330 "ScillaParser.ml"
                )), _startpos_l_), _, _startpos__2_), (r : (
# 37 "ScillaParser.mly"
       (string)
# 5334 "ScillaParser.ml"
                )), _startpos_r_) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_stmt = let _startpos = _startpos_l_ in
                
# 255 "ScillaParser.mly"
                         ( (Load (asIdL l (toLoc _startpos__2_), asIdL r (toLoc _startpos_r_)), toLoc _startpos) )
# 5341 "ScillaParser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv229 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5355 "ScillaParser.ml"
            ) * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5364 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState172 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BLOCK ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BUILTIN ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CID _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EMP ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FUN ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXLIT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LET ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MATCH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TFUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState176) : 'freshtv234)
    | LSQB ->
        _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState172
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172

and _menhir_run193 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 5421 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let ((m : (
# 37 "ScillaParser.mly"
       (string)
# 5430 "ScillaParser.ml"
        )) : (
# 37 "ScillaParser.mly"
       (string)
# 5434 "ScillaParser.ml"
        )) = _v in
        let (_startpos_m_ : Lexing.position) = _startpos in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_stmt = let _startpos = _startpos__1_ in
        
# 269 "ScillaParser.mly"
                 ( (CreateEvnt (asIdL m (toLoc _startpos)), toLoc _startpos) )
# 5443 "ScillaParser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)) : 'freshtv200)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)

and _menhir_run195 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 5466 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LSQB ->
            _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState196
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState196) : 'freshtv194)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)

and _menhir_run198 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv191) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _1 = () in
    let _v : 'tv_stmt = let _startpos = _startpos__1_ in
    
# 267 "ScillaParser.mly"
                         ( (AcceptPayment, toLoc _startpos) )
# 5499 "ScillaParser.ml"
     in
    _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState236 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState233 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv32)
    | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv34)
    | MenhirState225 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv36)
    | MenhirState223 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState220 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv40)
    | MenhirState214 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState211 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state * 'tv_transition) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState204 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state * 'tv_stmt_pm_clause) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * 'tv_stmt)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5557 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv51 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5566 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 5570 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state * 'tv_map_access) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5584 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5588 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5597 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState173 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5611 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv63 * _menhir_state) * _menhir_state * 'tv_pattern)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5630 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv69 * _menhir_state) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * _menhir_state) * 'tv_trans_id)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv73) * (
# 38 "ScillaParser.mly"
       (string)
# 5649 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_list_field_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv75 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 5658 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv77 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 5667 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 5676 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv81) * (
# 38 "ScillaParser.mly"
       (string)
# 5685 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_param_pair)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5699 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5708 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89) * (
# 38 "ScillaParser.mly"
       (string)
# 5717 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv90)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_libentry) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state * 'tv_exp_pm_clause) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv95 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5735 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_type_annot) * Lexing.position) * _menhir_state * 'tv_simple_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv97 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5744 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_type_annot) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _), _, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv102)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv103 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5762 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_simple_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5776 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5785 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 5799 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_option_ctargs_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * Lexing.position) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv116)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv117 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 5812 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv119 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 5821 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv121 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 5830 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5844 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * 'tv_msg_entry)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state * Lexing.position) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv135 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state * 'tv_typ) * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state * 'tv_typ) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv141 * _menhir_state) * (
# 39 "ScillaParser.mly"
       (string)
# 5888 "ScillaParser.ml"
        ))) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 5902 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv147 * _menhir_state) * (
# 39 "ScillaParser.mly"
       (string)
# 5911 "ScillaParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv151 * _menhir_state) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5950 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5964 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state) * _menhir_state * 'tv_pattern)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state * 'tv_arg_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 5988 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv177 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 6002 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv179 * _menhir_state * Lexing.position) * (
# 39 "ScillaParser.mly"
       (string)
# 6011 "ScillaParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv181 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 6020 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 6029 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * 'tv_imports) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv186)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state * 'tv_cident) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv190)

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 39 "ScillaParser.mly"
       (string)
# 6050 "ScillaParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((t : (
# 39 "ScillaParser.mly"
       (string)
# 6060 "ScillaParser.ml"
    )) : (
# 39 "ScillaParser.mly"
       (string)
# 6064 "ScillaParser.ml"
    )) = _v in
    ((let _v : 'tv_typ = 
# 125 "ScillaParser.mly"
           ( TypeVar t )
# 6069 "ScillaParser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv28)

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MAP ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | TID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORALL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LPAREN ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MAP ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | TID _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 39 "ScillaParser.mly"
       (string)
# 6125 "ScillaParser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PERIOD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv19 * _menhir_state) * (
# 39 "ScillaParser.mly"
       (string)
# 6136 "ScillaParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CID _v ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FORALL ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LPAREN ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | MAP ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | TID _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv20)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv21 * _menhir_state) * (
# 39 "ScillaParser.mly"
       (string)
# 6162 "ScillaParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)) : 'freshtv24)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)

and _menhir_run234 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 105 "ScillaParser.mly"
       (Syntax.typ list)
# 6183 "ScillaParser.ml"
    ) = 
# 247 "ScillaParser.mly"
      ( [] )
# 6187 "ScillaParser.ml"
     in
    _menhir_goto_types _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "ScillaParser.mly"
       (string)
# 6194 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | MAP ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | TID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | COMMA | EOF | EQ | FORALL | RPAREN | TARROW ->
        _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and _menhir_init : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> _menhir_env =
  fun lexer lexbuf ->
    let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and cmodule : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 107 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.cmodule)
# 6241 "ScillaParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IMPORT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CONTRACT | LIBRARY ->
            _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1) : 'freshtv10)
    | CONTRACT | LIBRARY ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
        ((let _v : 'tv_imports = 
# 330 "ScillaParser.mly"
  ( [] )
# 6270 "ScillaParser.ml"
         in
        _menhir_goto_imports _menhir_env _menhir_stack _v) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv14)) : 'freshtv16))

and exps : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 6283 "ScillaParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | BLOCK ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | BUILTIN ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | CID _v ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EMP ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_run221 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | FUN ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | HEXLIT _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LBRACE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TFUN ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState220) : 'freshtv8))

and lmodule : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 108 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.library)
# 6328 "ScillaParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LIBRARY ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState225) : 'freshtv6))

and stmts_term : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 106 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.stmt_annot list)
# 6347 "ScillaParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ACCEPT ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DELETE ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EVENT ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run166 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SEND ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState229) : 'freshtv4))

and types : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 105 "ScillaParser.mly"
       (Syntax.typ list)
# 6378 "ScillaParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | FORALL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | LPAREN ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | MAP ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | TID _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState233) : 'freshtv2))

# 269 "/Users/nagaishou/.opam/4.06.1/lib/menhir/standard.mly"
  

# 6407 "ScillaParser.ml"
