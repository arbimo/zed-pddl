["(" ")"] @punctuation.bracket

(number) @number
(ident) @variable
(param) @number
(keyword) @keyword
(comment) @comment
(ERROR) @error @ERROR

; identifiers at the beginning of a list are treated a function names (list is a function application in lisp)
(list
  .
  (ident) @function)
