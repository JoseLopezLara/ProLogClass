
;Ejercicio 1: Escribir una función recursiva que devuelva la suma de los primeros N enteros
(defun sumaHastaN (n)
  (cond 
    ((= n 0) 1) 
    ((= n 1) 1) 
    (t (+ n (sumaHastaN (- n 1))))
  )
)

;Ejercicio 2: Escribir un programa que encuetre la suma de los enteros positivos pares desde N hasta 2

(defun sumaPares (n)
  (if (< n 2)
    0
    (if (= (mod n 2) 0)
      (+ n (sumaPares (- n 2)))
      (sumaPares (- n 1)))))
  

;Ejercicio 4: Definir una función que tenga por argumentos una lista y devuelva el tercer elemmento de dicha lista
(defun tercerElemento(lista)
  (caddr lista)
)

;Ejercicio 5 Definir una función que tenga por argumentos una lista y devuelva otra lista con el primer y ultimo elemnto
(defun primerYUltimo(lista)
  (apend (car lista) (obtenerUltimo))
)

(defun obtenerUltimo(lista)
  (if lista
    (cdr lista)
    lista
  )
)


