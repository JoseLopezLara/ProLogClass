
(defun printLevels(list)
    ;Print the first level
    (if list
      (format t "¿Estas pensando en ~a? ~%" (car list)) )
    
    ;Print the second level
    (if list
      (printLevels (mapcar #' car (cadr (assoc (car list) *nodesTest*)))))
    
    (if list
      (printLevels (cdr list)))
)

(defparameter *nodesTest*
            '((Gryffindor (
							(MagoG (Es mago))
              (MuggleG (Es muggle))
              (Maestro)))
						 (Slytherin(
							(MagoS (Es mago))
              (MuggleS (Es muggle))))
						 
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