<p style="text-align: right;"><em>DATE: JANUARY - JUNE 2024</em></p>

## **Activity, Exercise about logic relations**

### Made In: Only MarkDowin

#### Activity number: 24

#### **DESCRIPTION:**

#### In this exercise I need indetify into sentences the diferences Predicates, variable and constances, properties, quantifiers and actions that accours in given senetences

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

### **Riddle**

1. **En una calle hay cinco casas, cada una de un color distinto. En cada casa vive una persona de distinta nacionalidad. Cada dueño bebe un único tipo de bebida, fuma una sola marca de cigarrillos y tiene una mascota diferente a sus vecinos.A partir de las 15 pistas presentadas a continuación,la consigna que hay que responder es: "¿Quién es el dueño del pez?"**

    * **Ademas:**
        * **El británico vive en la casa roja.**
        * **El sueco tiene un perro como mascota.**
        * **El danés toma té.**
        * **El noruego vive en la primera casa.**
        * **El alemán fuma Prince.**
        * **La casa verde está inmediatamente a la izquierda de la blanca.**
        * **El dueño de la casa verde bebe café.**
        * **El propietario que fuma Pall Mall cría pájaros.**
        * **El dueño de la casa amarilla fuma Dunhill.**
        * **El hombre que vive en la casa del centro bebe leche.**
        * **El vecino que fuma Blends vive al lado del que tiene un gato.**
        * **El hombre que tiene un caballo vive al lado del que fuma Dunhill.**
        * **El propietario que fuma Bluemaster jtoma cerveza.**
        * **El vecino que fuma Blends viveal lado del que toma agua.**
        * **El noruego vive al lado de la casa azul.**

### **Analize properties**

1. **En una calle hay cinco casas, cada una de un color distinto. En cada casa vive una persona de distinta nacionalidad. Cada dueño bebe un único tipo de bebida, fuma una sola marca de cigarrillos y tiene una mascota diferente a sus vecinos.A partir de las 15 pistas presentadas a continuación,la consigna que hay que responder es: "¿Quién es el dueño del pez?"**

    **INFERENCES**
    * **individual variable/constants:** Variabes: Color, Casa, Bedida, Cigarro, Mascota
    * **properties**: Color, Nacionalidad, Bebida, Cigarro, mascota
    * **quantifier**:
    * **action**: Vive, bebe, fuma, tiene_mascota

    * **Ademas:**
        * **El británico vive en la casa roja.**
            **INFERENCES**
            * **Predicate:** Binario, vive_en(casa_roja, britanico)
            * **individual variable/constants:** Constante: britanico y casa_roja, roja
            * **properties:**  nacionalidad, color
            * **quantifier:**
            * **action:** vive_en
        * **El sueco tiene un perro como mascota.**
            **INFERENCES**
            * **Predicate:** Binario, mascota_del(perro, sueco)
            * **individual variable/constants:** Constate: Sueco, perro
            * **properties:**  mascota, nacionalidad
            * **quantifier:**
            * **action:**  tiene (mascota_del)
        * **El danés toma té.**
            **INFERENCES**
            * **Predicate:** Binario, bebida_que_toma_el(te, danes)
            * **individual variable/constants:** Constantes: Danés, té
            * **properties:**  bebida, nacionalidad
            * **quantifier:**
            * **action:** toma (bebida_que_toma_el)
        * **El noruego vive en la primera casa.**
        * ***----> DUDA: primera_casa es contante?***
        **INFERENCES**
            * **Predicate:** Binario: vien_en(nuruego, primera_casa)
            * **individual variable/constants:** Constante: Noruego, primera_casa
            * **properties:** Nacionalidad  
            * **quantifier:**
            * **action:** vive_en
        * **El alemán fuma Prince.**
        **INFERENCES**
            * **Predicate:** Binario, fuma_el(Prince, Alemán)
            * **individual variable/constants:** Contantes: Alemán y Prince
            * **properties:**  Nacionalidad, cigarros
            * **quantifier:**
            * **action:** fuma
        * **La casa verde está inmediatamente a la izquierda de la blanca.**
            **INFERENCES**
            * ***----> DUDA: si color es una propiedad, ¿Verde y blanco son constantes individuales? Esto por la logica de que Prince es una constante y su propiedad es cigarros. Entonces color es una propiedad y su constante es verde***
            * **Predicate:** Binario, izquierda_de(casa_verde, casa_blanca)
            * **individual variable/constants:** Constantes: casa_verde,  casa_blanca, blanca y verde
            * **properties:** color  
            * **quantifier:**
            * **action:** izquierda_de()
        * **El dueño de la casa verde bebe café.**
            **INFERENCES**
            * **Predicate:** Binario, dueño_de(X, casa_verde) bebida_que_toma_el(café, X)
            * **individual variable/constants:** Constantes: casa_verde, bebida_café, verde,  Variable: Dueño
            * **properties:** bebida, color, dueño
            * **quantifier:**
            * **action:** bebida_que_toma_el()
        * **El propietario que fuma Pall Mall cría pájaros.**
            **INFERENCES**
            * ***----> DUDA: el críar lo puedo manejar como mascota?***
            * ***----> DUDA: Si debo de tener dueño_de(X, Y) y variable casa***
            * ***----> DUDA: el propietario lo puedo manejar como Dueño?***
            * **Predicate:** fuma(X, PallMall) mascota_del(pajaros, X) dueño_de(X, Y)
            * **individual variable/constants:** Variable: Dueño, Casa Constante:pajaros, pall_mall
            * **properties:** mascota, dueño
            * **quantifier:**
            * **action:** mascota_del() fuma() dueño_de()
        * **El dueño de la casa amarilla fuma Dunhill.**
            **INFERENCES**
            * **Predicate:** fuma(X, PallMall), dueño_de(X, casa_amarilla)
            * **individual variable/constants:** Variable: Dueño, Constante: Dunhill, casa_amarilla, amarilla
            * **properties:** dueño, fuma, color
            * **quantifier:**
            * **action:** fuma(), dueño_de()
        * **El hombre que vive en la casa del centro bebe leche.**
            * ***----> DUDA: el "hombre que vive" lo puedo manejar como Dueño?***
            * ***----> DUDA: casa_del_centro lo puedo tomar como una constante e ingresarla en "dueño_de(X, casa_del_centro)" como si fuese un color***
            **INFERENCES**
            * **Predicate:** dueño_de(X, casa_del_centro)  bebida_que_toma_el(leche, X)
            * **individual variable/constants:** Variable: Dueño Contsante: Leche, casa del centro
            * **properties:** dueño, toma
            * **quantifier:**
            * **action:** dueño_de() bebida_que_toma_el()
        * **El vecino que fuma Blends vive al lado del que tiene un gato.**
            **INFERENCES**
            * ***----> DUDA: Hay manera de representar la Y como otro hecho? De la forma: izquierda_o_derecha_de(X, mascota_del(gato ,Y))***
            * **Predicate:** mascota_del(gato ,X) izquierda_o_derecha_de(X, Y)
            * **individual variable/constants:** Varaibles: Vecino Constante: Blends, gato
            * **properties:** vecino, fuma, mascota
            * **quantifier:**
            * **action:** mascota_del() fuma()
        * **El hombre que tiene un caballo vive al lado del que fuma Dunhill.**
            **INFERENCES**
            * **Predicate:** mascota_del(caballo ,X) izquierda_o_derecha_de(X, Y) fuma(X, dunhill)
            * **individual variable/constants:** Variable: hombre  Contante: caballo Dunhill
            * **properties:** mascota, fuma, izquierda_o_derecha_de
            * **quantifier:**
            * **action:** mascota_del() fuma()
        * **El propietario que fuma Bluemaster toma cerveza.**
            **INFERENCES**
            * **Predicate:** fuma(X, Bluemaster) dueño_de(X, Y) bebida_que_toma_el(X, cerveza)
            * **individual variable/constants:** Variable: dueño Contantes: Bluemaster, cerveza
            * **properties:** dueño, fuma, toma
            * **quantifier:**
            * **action:** dueño_de()
        * **El vecino que fuma Blends viveal lado del que toma agua.**
            **INFERENCES**
            * **Predicate:** fuma(X, blends) dueño_de(X, Y) bebida_que_toma_el(X, agua) izquierda_o_derecha_de(X, Y)
            * **individual variable/constants:** Variable: vecino Contantes: Blendes, agua
            * **properties:** fuma, toma, dueño, zquierda_o_derecha_de
            * **quantifier:**
            * **action:** izquierda_o_derecha_de(), bebida_que_toma_el(), fuma(), dueño_de()
        * **El noruego vive al lado de la casa azul.**
            **INFERENCES**
            * **Predicate:** izquierda_o_derecha_de(nueruego, casa_azul)
            * **individual variable/constants:** Contantes: noruego, caza_azul, azul
            * **properties:** nacionalidad, color
            * **quantifier:**
            * **action:** izquierda_o_derecha_de()

### **Relation between sentences and key points**

1. **En una calle hay cinco casas, cada una de un color distinto. En cada casa vive una persona de distinta nacionalidad. Cada dueño bebe un único tipo de bebida, fuma una sola marca de cigarrillos y tiene una mascota diferente a sus vecinos.A partir de las 15 pistas presentadas a continuación,la consigna que hay que responder es: "¿Quién es el dueño del pez?"**
    * **Key points**
        * Colores de Casa: Roja, verde, blanca, amarilla, azul
        * Nacionalidades: Britanico, Sueco, Danés, Nuruego, Aleman
        * Bebidas: Té, café, leche, cerveza, agua 
        * Cigarrillos: Prince, Pall Mall, Dunhill, Blends, Bluemaster
        * Mascotas: Perro, pájaros, gato, caballo, pez 

    * **Ademas:**
        * **El británico vive en la casa roja.**
            Britanico
            Color de casa: Roja
            Bebida:
            Cigarrillos:
            Mascota:
            Posición de casa:
        * **El sueco tiene un perro como mascota.**
            Sueco
            Color de casa:
            Bebida:
            Cigarrillos:
            Mascota: Perro
            Posición de casa:
        * **El danés toma té.**
            Danés
            Color de casa:
            Bebida: Té
            Cigarrillos:
            Mascota:
            Posición de casa:
        * **El noruego vive en la primera casa.** R3
            Nuruego
            Color de casa:
            Bebida:
            Cigarrillos:
            Mascota:
            Posición de casa: 1
        * **El alemán fuma Prince.**
            Aleman
            Color de casa:
            Bebida:
            Cigarrillos: Prince
            Mascota:
            Posición de casa:
        * **La casa verde está inmediatamente a la izquierda de la blanca.** R4
            ?
            Color de casa: verde
            Bebida: café
            Cigarrillos:
            Mascota:
            Posición de casa: verde - blanca
        * **El dueño de la casa verde bebe café.**  R4
            ?
            Color de casa: verde
            Bebida: café
            Cigarrillos:
            Mascota:
            Posición de casa:
        * **El propietario que fuma Pall Mall cría pájaros.**
            ?
            Color de casa:
            Bebida:
            Cigarrillos: Pall Mall
            Mascota: pájaros
            Posición de casa:
        * **El dueño de la casa amarilla fuma Dunhill.** R1
            ?
            Color de casa: amarilla
            Bebida:
            Cigarrillos: Dunhill
            Mascota:
            Posición de casa:
        * **El hombre que vive en la casa del centro bebe leche.**
            ?
            Color de casa:
            Bebida: leche
            Cigarrillos:
            Mascota:
            Posición de casa: ? ? centro ? ?
        * **El vecino que fuma Blends vive al lado del que tiene un gato.** R2
            ?
            Color de casa:
            Bebida:
            Cigarrillos: Blends
            Mascota:
            Posición de casa: del_que_tiene_gato ? del_que_tiene_gato
        * **El hombre que tiene un caballo vive al lado del que fuma Dunhill.** R1
            ?
            Color de casa:
            Bebida:
            Cigarrillos:
            Mascota: caballo
            Posición de casa: del_la_casa_amarilla ? del_la_casa_amarilla
        * **El propietario que fuma Bluemaster toma cerveza.**
            ?
            Color de casa:
            Bebida: cerveza
            Cigarrillos: Bluemaster
            Mascota:
            Posición de casa:
        * **El vecino que fuma Blends vive al lado del que toma agua.** R2
            ?
            Color de casa:
            Bebida:
            Cigarrillos: Blends
            Mascota:
            Posición de casa: del_que_tiene_gato ? toma_agua || toma_agua ?  del_que_tiene_gato  
        * **El noruego vive al lado de la casa azul.** R3
            nuruego
            Color de casa:
            Bebida:
            Cigarrillos:
            Mascota:
            Posición de casa: casa_azul ? casa_azul

    **Unification**
        Britanico
            Color de casa: Roja
            Bebida:
            Cigarrillos:
            Mascota:
            Posición de casa:
        Sueco
            Color de casa:
            Bebida:
            Cigarrillos:
            Mascota: Perro
            Posición de casa:
        Danés
            Color de casa:
            Bebida: Té
            Cigarrillos:
            Mascota:
            Posición de casa:
        Nuruego (Union de R3)
            Color de casa:
            Bebida:
            Cigarrillos:
            Mascota:
            Posición de casa: 1 casa_azul
        Aleman
            Color de casa:
            Bebida:
            Cigarrillos: Prince
            Mascota:
            Posición de casa:
        ?
            Color de casa: verde
            Bebida: café
            Cigarrillos:
            Mascota:
            Posición de casa: [1 - casa_azul] verde(3 || 4) - blanca
        ?
            Color de casa: verde
            Bebida: café
            Cigarrillos:
            Mascota:
            Posición de casa:
        ?
            Color de casa:
            Bebida:
            Cigarrillos: Pall Mall
            Mascota: pájaros
            Posición de casa:
        ? (Union de R1)
            Color de casa: amarilla
            Bebida:
            Cigarrillos: Dunhill
            Mascota:
            Posición de casa:
        ?
            Color de casa:
            Bebida: leche
            Cigarrillos:
            Mascota:
            Posición de casa: ? ? centro ? ?
        ?
            Color de casa:
            Bebida:
            Cigarrillos: Blends
            Mascota:
            Posición de casa: del_que_tiene_gato ? del_que_tiene_gato
        ?
            Color de casa:
            Bebida:
            Cigarrillos:
            Mascota: caballo
            Posición de casa:  [1 casa_azul] casa_amarilla ? casa_amarilla
        ?
            Color de casa:
            Bebida: cerveza
            Cigarrillos: Bluemaster
            Mascota:
            Posición de casa:
        ?
            Color de casa:
            Bebida:
            Cigarrillos: Blends
            Mascota:
            Posición de casa: del_que_tiene_gato ? toma_agua || toma_agua ?  del_que_tiene_gato