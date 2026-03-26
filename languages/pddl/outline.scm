; (list
;     .
;     (keyword) @start-symbol @context
;     .
;         (ident) @name
;     (#match? @start-symbol "^:action")
; ) @item

":action" @keyword

(
    (list . (keyword)))

; (list
;     .
;     (symbol) @start-symbol @context
;     .
;     [
;         (list . (symbol) @name)
;     ]
;     (#match? @start-symbol "^:predicates")
; ) @item

; (list
;     .
;     (symbol) @start-symbol @context
;     .
;     [
;         (_)* (list . (symbol) @name @item)
;     ]
;     (#match? @start-symbol "^:predicates")
; )

(action . ":action" @context . (ident) @name) @item


(list . (keyword) @name
 (#match? @name "^:predicates")
) @item


((keyword) @start-symbol
 (_)*
 (list . (ident) @name @item)
 (#match? @start-symbol "^:predicates")
)

((keyword) @start-symbol @context
 (_)*
 (ident) @name @item
 (#match? @start-symbol "^:types")
)
