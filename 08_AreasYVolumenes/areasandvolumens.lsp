;Area y Volumen de un Cuadrado
;-----------------------------------------------
(defun areaCuadrado()
    (princ "Largo del Lado No1: ")
    (setq lado1 (read))
    (setq resultado (* lado1 lado1))
    (format t "El area del cuadrado es: ~a" resultado)
)

(defun volumenCuadrado()
    (princ "Largo del Lado No1: ")
    (setq lado1 (read))
    (setq resultado (* lado1 lado1 lado1))
    (format t "El volumen del cuadrado es: ~a" resultado)
)