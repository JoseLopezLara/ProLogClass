;Execrcise One
;Una tienda que vende pantalones Dickies al menudeo y al mayoreo 
;tiene las siguientes tarifas; 
;si se compran menos de 5 pantalones estos se cobran a su precio normal, 
;en caso de que se copren 5 o mas pero menos de 12 , se les descuenta el 15% en cada pantalon, 
;si se compran mas de 12 se les descuenta 30% en cada pantalon. 
;Escriba un programa que pida como dato de entrada el numero de pantalones que se desean comprar 
;y con ello imprima el total a pagar por la compra hecha.
;-----------------------------------------------


(defun calcular-total (cantidad precio-del-pantalon)
  (cond 
    ((< cantidad 5) (* cantidad precio-del-pantalon))
    ((< cantidad 12) (* cantidad 0.85 precio-del-pantalon))
    (t (* cantidad 0.70 precio-del-pantalon))
  )
)  

(defun exercise1 ()
  (format t "Ingrese la cantidad de pantalones a comprar: ")
  (setq cantidad (read))

  (format t "Ingrese el precio de cada pantalon: ")
  (setq precio-del-pantalon (read))

  (format t "Total a pagar: $~2f~%" (calcular-total cantidad precio-del-pantalon))

)

;Execrcise One
;Escriba un programa para determinar si un solicitante puede lograr
;un préstamo. Deberá pedir los siguientes datos para cada
;solicitante: Nombre, historia crediticia(‘b’buena o ‘m’ mala),
;cantidad pedida, salario anual, y valor de otras propiedades.  El
;banco solo considerará a los solicitantes con un estado de crédito
;bueno.  De aquellos, solo aceptara los que tengan mas de 6 puntos.
;Los puntos se obtienen como sigue: 
; 5 puntos si el salario es 50% del préstamo o más.  
; 3 puntos si el salario es por lo menos 25% pero menos de 50% del préstamo.  
; 1 punto si el salario es por lo menos 10% pero menos de 25% del préstamo.  
; 5 puntos si se tiene otra propiedad del doble del préstamo o mas.  
; 3 puntos si se tiene otra propiedad igual al préstamo pero menor del doble.
;-----------------------------------------------


(defun calcPoints(requestedAmount annualSalary amountInOtherProperties)
  (setq points 0)
  (cond 
    ((>= annualSalary (* requestedAmount 0.5)) (setq points (+ points 5)))
    ((>= annualSalary (* requestedAmount 0.25)) (setq points (+ points 3)))
    ((>= annualSalary (* requestedAmount 0.10)) (setq points (+ points 1)))
  )
  (cond 
    ((>= amountInOtherProperties (* requestedAmount 2)) (setq points (+ points 5)))
    ((>= amountInOtherProperties requestedAmount) (setq points (+ points 3)))
  )

  (format t "Total de puntos: ~a ~% ~%" points)
  (if (> points 6)
    t
    nil  
  )
)

(defun exercise2()
  (format t "Nombre del solicitante: ")
  (setq name (read))
  (format t "Historia crediticia ('b' o 'm'): ")
  (setq creditHistory (read))
  (format t "Cantidad solicitada: ")
  (setq requestedAmount (read))
  (format t "Salario anual: ")
  (setq annualSalary (read))
  (format t "Monto de otras propiedades: ")
  (setq amountInOtherProperties (read))

  (cond 
    ((string-equal "m" creditHistory) (format t "El solicitante ~a NO aplica para el prestamo" name) ) 
    ((string-equal "b" creditHistory) 
      (if (calcPoints requestedAmount annualSalary amountInOtherProperties)
        (format t "El solicitante ~a SI aplica para el prestamo ~%" name)
        (format t "El solicitante ~a NO aplica para el prestamo ~%" name)
      )
    ) 
  
  )

)

;Escriba un programa que pida una letra minúscula, 
; el programa deberá imprimir si la letra es una vocal (a,e,i,o,u), 
; semivocal (y)
; o una consonante.
(defun exercise3()
  (format t "Digite una letra: ")
  (setq letter (read))

  (case letter
    ((a e i o u) (format t "La letra '~a' es una vocal" letter))
    ((y) (format t "La letra '~a' es una semivocal" letter))
    (otherwise (format t "La letra ~a es una consonante" letter))
  )  
)


;Para determinar si un año es bisiesto o no debe de cumplir las siguiente regla: 
; Ser divisible entre 4 y no divisible entre 100 
; o bien divisible entre 400.  
; Escriba un programa que pida como entrada el año e imprima si el año es bisiesto o no.
(defun exercise4()
  (format t "Digite el año: ")
  (setq year (read))

  (if (or (and (= 0 (mod year 4)) (/= 0 (mod year 100))) (= 0 (mod year 400)))
    (format t "El numero ~a SI es una año bisiesto" year)
    (format t "El numero ~a NO es una año bisiesto" year)
  )

)

;Escriba un programa que pida el numero de mes (del 1 al 12 ) e
;imprima el numero de dias que tiene el mes, donde:

; El mes 2 tiene 28 dias
; Los meses 4,6,9 y 11 tienen 30 dias
; Los meses 1,3,5,7,8,10 y 12 tienen 31 dias

;Si da un mes diferente a los anteriores debera imprimir el mensaje
;  “MES ERRONEO”.
(defun exercise5()
  (format t "Digite un numero de mes: ")
  (setq month (read))

  (case month
    ((2) (format t "El mes '~a' tiene 28 dias ~% ~%" month))
    ((4 6 9 11) (format t "El mes '~a' tiene 30 dias ~% ~%" month))
    ((1 3 5 7 8 10 12) (format t "El mes '~a' tiene 31 dias ~% ~%" month))
    (otherwise (format t "MES ERRONEO ~% ~%"))
  )  
)

