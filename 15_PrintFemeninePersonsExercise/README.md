<p style="text-align: right;"><em>DATE: JANUARY - JUNE 2024</em></p>

## **Activity, Print the Second Level of Tree**

### Made In: CLISP

#### Activity number: 15

#### **DESCRIPTION:**

#### Make a functions that ruturns the femenine persons using the *nodes* provider by teacher

________________________________________________________
________________________________________________________

#### Student: José López Lara

#### Control Number: 19120194

* [x] Student Email: <l19120194@morelia.tecnm.mx>
* [x] Personal Email: <jose.lopez.lara.cto@gmail.com>
* [x] GitHub Profile: [JoseLopezLara](https://github.com/JoseLopezLara)
* [x] Linkedin Profile: [in/jose-lopez-lara/](https://www.linkedin.com/in/jose-lopez-lara/)

________________________________________________________
________________________________________________________

### **CODE**

* Function

```lisp
(defun printFemenine(list)
  (append 
    '(the femenine person are) 
      (apply #' append (mapcar #' cadr (cadar *nodes*))))
   
)
```

* Tree

```lisp
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
```

**Test:**

![image](test.png)
