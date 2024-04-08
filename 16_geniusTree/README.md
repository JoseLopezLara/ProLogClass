<p style="text-align: right;"><em>DATE: JANUARY - JUNE 2024</em></p>

## **Activity, Meke a Genealogical Family tree Relations**

### Made In: CLISP

#### Activity number: 16

#### **DESCRIPTION:**

#### Make a ralation in logic of first order about the genealogical family tree

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

### **Genalogica Family Tree**

* Relations

```prolog
/*Hijos*/
hijo(jose)
hijo(israel)
hijo(ivan)

    hermanode(jose, ivan)
    hermanode(jose, israel)

    hermanode(israel, ivan)
    hermanode(israel, jose)

    hermanode(ivan, jose)
    hermanode(ivan, israel)

/*Padres*/
padre(jose_padre)
madre(leticia)

    padrede(jose_padre, jose)
    padrede(jose_padre, israel)
    padrede(jose_padre, ivan)
    
    madrede(leticia, jose)
    madrede(leticia, israel)
    madrede(leticia, ivan)


/*Tios Maternos*/
tiom(carlos)

tiom(refugio)
primo(jonathan)
    padrede(refugio, jonathan)

tiom(isidro)

tiom(roberto)
prima(alexa)
    padrede(roberto, alexa)

tiom(javier)
prima(paola)
prima(lizeth)
    padrede(javier, paola)
    padrede(javier, lizeth)

tiam(rosa)
prima(viviana)
primo(cesar)
    madrede(rosa, viviana)
    madrede(rosa, cesar)

tiam(laura)
primo(edwin)
primo(willian)
prima(karla)
    madrede(rosa, edwin)
    madrede(rosa, willian)
    madrede(rosa, karla)

/*Tios Paternos*/
tiop(ignacio)
prima(tere)
primo(cristian)
    padrede(ignacio, tere)
    padrede(ignacio, cristian)


tiop(alejandro)
primo(jason)
    padrede(alejandro, jason)


tiap(martha)
primo(willian_l)
    madrede(martha, willian_l)

tiap(veronica)
prima(alejandra)
prima(aira)
prima(anaury)
    madrede(veronica, alejandra)
    madrede(veronica, aira)
    madrede(veronica, anaury)

/*Abuelos Maternos*/
abuelom(salud)
abuelam(paula)

/*Abuelos Paternos*/
abuelop(jose_abuelo)
abuelap(martha_abuela)

```
