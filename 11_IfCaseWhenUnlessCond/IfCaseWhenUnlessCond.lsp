;Execrcise One
;Una tienda que vende pantalones Dickies al menudeo y al mayoreo 
;tiene las siguientes tarifas; 
;si se compran menos de 5 pantalones estos se cobran a su precio normal, 
;en caso de que se copren 5 o mas pero menos de 12 , se les descuenta el 15% en cada pantalon, 
;si se compran mas de 12 se les descuenta 30% en cada pantalon. 
;Escriba un programa que pida como dato de entrada el numero de pantalones que se desean comprar 
;y con ello imprima el total a pagar por la compra hecha.
;-----------------------------------------------

;; Definimos una función para calcular el total a pagar en base al número de pantalones comprados
(defun calcular-total (cantidad precio-del-pantalon)
  (cond ((< cantidad 5) (* cantidad precio-del-pantalon))  ; Menos de 5 pantalones
        ((< cantidad 12)                           ; 5 o más pero menos de 12, 15% en cada pantalón
         (* cantidad 0.85 precio-del-pantalon))  
        (t                                        ; Si se compran 12 o más pantalones, 30% en cada pantalón
         (* cantidad 0.70 precio-del-pantalon))))  


(defun exercise1 ()
    ;; Solicitamos la cantidad de pantalones al usuario
    (format t "Ingrese la cantidad de pantalones a comprar: ")
    (setq cantidad (read))

    (format t "Ingrese el preio de cada pantalon: ")
    (setq precio-del-pantalon (read))

    ;; Calculamos el total a pagar y lo mostramos al usuario
    (format t "Total a pagar: $~2f~%" (calcular-total cantidad precio-del-pantalon))

)
