
(defun printLevel(list)
  (format t "¿La casa a la que pertenece tu personaje es ~a? ~%" (car list))
  (if list
    (printLevel (cdr list))
  )
)

(defparameter *nodes*
            '((Gryffindor (
							(Mago (Es mago))
              (Muggle (Es muggle))))
						 (Slytherin(
							(Mago (Es mago))
              (Muggle (Es muggle))))
						 (Hafflepuff(
							(Mago (Es mago))
              (Muggle (Es muggle))))
						 (Ravenclaw(
							(Mago (Es mago))
              (Muggle (Es muggle))))
            (NoEsEstudiante(
							(Mago (Es mago))
              (Muggle (Es muggle))))
						 )
  )