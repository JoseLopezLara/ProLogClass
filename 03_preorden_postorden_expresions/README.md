<p style="text-align: right;"><em>DATE: JANUARY - JUNE 2024</em></p>

## **EVALUATE EXPRESION IN PREORDEN AND POSTORDEN**
### Made In: Only MarkDown


#### Activity number: 03

#### **DESCRIPTION:**
#### In this exercise I change expresion from inorden to preorden and postorden, and then evaluate with stacks. Like explication class"
________________________________________________________
________________________________________________________
#### Student: José López Lara
#### Control Number: 19120194
* [x] Student Email: l19120194@morelia.tecnm.mx
* [x] Personal Email: jose.lopez.lara.cto@gmail.com
* [x] GitHub Profile: [JoseLopezLara](https://github.com/JoseLopezLara)
* [x] Linkedin Profile: [in/jose-lopez-lara/](https://www.linkedin.com/in/jose-lopez-lara/) 
_______________________________________________________
_______________________________________________________

### **Exercise:**

```
EXPRESIÓN EN INORDEN: 3+6+6+2*3+2*5
Evaluamos:
3+6+6+2*3+2*5
3+6+6+6+10
= 31

    - PASAR A PREORDEN:
3+6+6+2*3+2*5
3+6+6+(*23)+(*25)
(+36)+(+6(*23))+(*25)
(+(+36)(+6(*23)))+(*25)
(+(+(+36)(+6(*23)))(*25))
+++36+6*23*25

Evaluamos:
+|+|+|3|6
+|+|9|+|6|*|2|3
+|+|9|+|6|6
+|+|9|12
+|21|*|2|5
+|21|10
= 31 [CORRECTO]

    - PASAR A POSORDEN:
3+6+6+2*3+2*5
3+6+6+(23*)+(25*)
(36+)+(6(23*)+)+(25*)
((36+)(6(23*)+)+)+(25*)
(((36+)(6(23*)+)+)(25*)+)
36+623*++25*+

Evaluamos:
3|6|+|
9|6|2|3*
9|6|6|+
9|12|+
21|2|5|*
21|10|+
= 31 [CORRECTO]


```
