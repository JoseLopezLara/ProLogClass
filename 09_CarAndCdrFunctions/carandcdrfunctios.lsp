;List No. 1: (a b c d f g h)
;Take out: h
(caddr(cddddr '(a b c d f g h)))
;Take out: g
(cadr(cddddr '(a b c d f g h)))
;Take out: f
(car(cddddr '(a b c d f g h)))
;Take out: c
(caddr '(a b c d f g h))

;List No. 2: ((a) (b d) ((1 2) 3))
;Take out: d
(cadadr '((a) (b d) ((1 2) 3)))
;Take out: 2
(cadr(caaddr '((a) (b d) ((1 2) 3))))
;Take out: (1 2)
(caaddr '((a) (b d) ((1 2) 3)))
;Take out: (3)
(cdaddr '((a) (b d) ((1 2) 3)))

;List No. 2: ((1 2 3) ((4 5 6 )) (((7 8 9 10))))
;Take out: 4
(caar(cadr '((1 2 3) ((4 5 6 )) (((7 8 9 10))))))
;Take out: 7
(caaaar(cddr '((1 2 3) ((4 5 6 )) (((7 8 9 10))))))
;Take out: 3
(caddar '((1 2 3) ((4 5 6 )) (((7 8 9 10)))))
;Take out: 10
(car(cdddar(caaddr '((1 2 3) ((4 5 6 )) (((7 8 9 10)))))))
