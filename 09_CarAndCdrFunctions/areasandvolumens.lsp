;List No. 1: (a b c d f g h)
;Take out: h
(cdddr(cddddr '(a b c d f g h)))
(caddr(cddddr '(a b c d f g h)))
;Take out: g
;Take out: f
;Take out: c

;List No. 2: ((a) (b d) ((1 2) 3))
;Take out: d
;Take out: 2
;Take out: (1 2)
;Take out: (3)

;List No. 2: ((1 2 3) ((4 5 6 )) (((7 8 9 10))))
;Take out: 4
;Take out: 7
;Take out: 3
;Take out: 10