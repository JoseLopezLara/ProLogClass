
(defun printFemenine(list)
  (append 
    '(the femenine person are) 
      (apply #' append (mapcar #' cadr (cadar *nodes*))))
   
)

(defparameter *nodes*  
              '((femenino (
                          (aire (ana))       
                          (fuego(azula))       
                          (tierra(top))       
                          (agua (katara))))
                (masculino(
                          (aire (Hola rayo))       
                          (fuego(Hola fuego))       
                          (tierra(Hola Tierra))       
                          (agua (poder de agua))))
                (ovni(
                      (aire (Hola rayo))       
                      (fuego(Hola fuego))       
                      (tierra(Hola Tierra))       
                      (agua (poder de agua)))
                )
                (aleatorio(
                          (aire (Hola rayo))       
                          (fuego(Hola fuego))       
                          (tierra(Hola Tierra))       
                          (agua (poder de agua)))
                )
                ))