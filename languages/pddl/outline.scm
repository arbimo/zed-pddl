; reference on tree-sitter queries: https://tree-sitter.github.io/tree-sitter/using-parsers/queries/index.html

; pick up standalone defitions in the file
(_ . (keyword) @context . (ident) @name
    (#any-of? @context
        ":action"
        ":durative-action"
        ":task"
        ":method"
        )
    ) @item


; identify sections of the file: any list that starts with a keyword (except for actions... that do not define a section but a single item)
(list . (keyword) @name
    (#not-any-of? @name
        ":action"
        ":durative-action"
        ":method"
        ":task"
        )
    ) @item

; Identifies items X Y of the form (:section (X ...) (Y ..))
; used for predicates
((keyword) @_section
    (_)*
    (list . (ident) @name @item)
    (#any-of? @_section
        ":predicates"
        ":functions"
        )
    )

; Identifies items X Y of the form (:section X  Y ...)
; used for types
((keyword) @_section
    (_)*
    (ident) @name @item
    (#any-of? @_section
        ":types"
        )
    (#not-eq? @name "-")  ; ignore standalone "-". not that the type to the left of the dash may still be picked up but it is very unclear when it should be omitted
                          ; (sometime a type appears only at the right, sometime multiple times)
    )

; Identifies items :x :y for the form (:section :x :y)
((keyword) @_section
    (_)*
    (keyword) @name @item
    (#any-of? @_section
        ":requirements"
        ":htn"
        )
    )
