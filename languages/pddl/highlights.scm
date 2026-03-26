["(" ")"] @punctuation.bracket

;(atom) @number

":action" @keyword

(number) @number
(ident) @variable
(param) @number
(keyword) @keyword
(comment) @comment
(ERROR) @error @ERROR
(list
  .
  (ident) @function)
; (character) @constant.builtin
; (boolean) @constant.builtin

; (string) @string

; (escape_sequence) @string.escape

; [(comment)
;  (block_comment)
;  (directive)] @comment

; ((symbol) @operator
;  (#match? @operator "^(\\+|-|\\*|/|=|>|<|>=|<=)$"))



; (list
;   .
;   (symbol) @keyword
;   (#match? @keyword
;    "^(:action|define-syntax|let\\*|lambda|λ|case|=>|quote-splicing|unquote-splicing|set!|let|letrec|letrec-syntax|let-values|let\\*-values|do|else|define|cond|syntax-rules|unquote|begin|quote|let-syntax|and|if|quasiquote|letrec|delay|or|when|unless|identifier-syntax|assert|library|export|import|rename|only|except|prefix)$"
;    ))

; ((symbol) @number
;  (#match? @number "^\\?"))
