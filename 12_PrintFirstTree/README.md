<p style="text-align: right;"><em>DATE: JANUARY - JUNE 2024</em></p>

## **Activity, Print the First Level of Tree**

### Made In: CLISP

#### Activity number: 12

#### **DESCRIPTION:**

#### Using the functions defparameter mapcar, asocc, car, cdr, #', ' and `. We need make a tree with any tematic, and then, we need print the firs level

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

### **Tree**

* The tree is about the Harry Potter

```lisp
(defun printLevel(list)
  (format t "¿La casa a la que pertenece tu personaje es ~a? ~%" (car list))
  (if list
    (printLevel (cdr list))
  )
)

(defparameter *nodes*
            '((Gryffindor 
                ((Mago (Es mago))
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
```

**Test:**

![image](test1.png)
