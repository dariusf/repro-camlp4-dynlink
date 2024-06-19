
(* https://ambassadortothecomputers.blogspot.com/2010/05/reading-camlp4-part-6-parsing.html *)
open Camlp4.PreCast
module Gram = MakeGram(Lexer)
let expr = Gram.Entry.mk "expr"
EXTEND Gram
  expr:
    [[
       "foo"; x = LIDENT; "bar" -> "foo-bar+" ^ x
     | "baz"; y = expr -> "baz+" ^ y
     ]];
END
;;
