/*Hijos*/
hijo(jose)
hijo(israel)
hijo(ivan)
hermano(jose)
hermano(israel)
hermano(ivan)

    hermanode(jose, ivan)
    hermanode(jose, israel)
    hermanode(israel, ivan)
    hermanode(israel, jose)
    hermanode(ivan, jose)
    hermanode(ivan, israel)

/*Padres*/
padre(jose_padre)
hijo(jose_padre)
hermano(jose_padre)
madre(leticia)
hija(leticia)
hermana(leticia)

    padrede(jose_padre, jose)
    padrede(jose_padre, israel)
    padrede(jose_padre, ivan)
    
    madrede(leticia, jose)
    madrede(leticia, israel)
    madrede(leticia, ivan)


/*Tios Maternos*/
/*------------------------------------------------------------------*/
tiom(carlos) 
hermano(carlos)
hijo(carlos)
        tiomde(carlos, jose)
        tiomde(carlos, israel)
        tiomde(carlos, ivan)

tiom(refugio)
hermano(refugio)
hijo(refugio)
padre(refugio)
padrede(refugio, jonathan)
    hijo(jonathan)
    primo(jonathan)
    primode(jonathan, jose)
    primode(jonathan, ivan)
    primode(jonathan, israel)
        padrede(refugio, jonathan)
        
        tiomde(refugio, jose)
        tiomde(refugio, israel)
        tiomde(refugio, ivan)

tiom(isidro)
hermano(isidro)
hijo(isidro)

tiom(roberto)
hermano(roberto)
hijo(roberto)
padre(roberto)
padrede(roberto, alexa)

    hija(alexa)
    prima(alexa)
    primade(alexa, jose)
    primade(alexa, ivan)
    primade(alexa, israel)
        padrede(roberto, alexa)

        tiomde(roberto, jose)
        tiomde(roberto, israel)
        tiomde(roberto, ivan)

tiom(javier) 
hermano(javier)
hijo(javier)
padre(javier)
padrede(javier, paola)
padrede(javier, lizeth)
    hija(paola)
    hermana(paola)
    prima(paola)
    primade(paola, jose)
    primade(paola, ivan)
    primade(paola, israel)
    prima(lizeth)
    hermana(lizeth)
    primade(lizeth, jose)
    primade(lizeth, ivan)
    primade(lizeth, israel)
        padrede(javier, paola)
        padrede(javier, lizeth)

        tiomde(javier, jose)
        tiomde(javier, israel)
        tiomde(javier, ivan)

        /*Relación entre hermanos*/
        hermanade(paola, lizeth)
        hermanade(lizeth, paola)
       
tiam(rosa)
hermana(rosa)
hija(rosa)
madre(rosa)
madrede(rosa, viviana)
madrede(rosa, cesar)
    hija(viviana)
    hermana(viviana)
    prima(viviana)
    primade(viviana, jose)
    primade(viviana, ivan)
    primade(viviana, israel)
    hijo(cesar)
    hermano(cesar)
    primo(cesar)
    primode(cesar, jose)
    primode(cesar, ivan)
    primode(cesar, israel)
        madrede(rosa, viviana)
        madrede(rosa, cesar)

        tiamde(rosa, jose)
        tiamde(rosa, israel)
        tiamde(rosa, ivan)

        /*Relación entre hermanos*/
        hermanode(cesar, viviana)
        hermanade(viviana, cesar)

tiam(laura) 
hermana(laura)
hija(laura)
madre(laura)
madrede(laura, edwin)
madrede(laura, willian)
madrede(laura, karla)
    hijo(edwin)
    hermano(edwin)
    primo(edwin)
    primode(edwin, jose)
    primode(edwin, ivan)
    primode(edwin, israel)
    hijo(willian)
    hermano(willian)
    primo(willian)
    primode(willian, jose)
    primode(willian, ivan)
    primode(willian, israel)
    hija(karla)
    hermana(karla)
    prima(karla)
    primade(karla, jose)
    primade(karla, ivan)
    primade(karla, israel)
        madrede(rosa, edwin)
        madrede(rosa, willian)
        madrede(rosa, karla)

        tiamde(laura, jose)
        tiamde(laura, israel)
        tiamde(laura, ivan)

        /*Relación entre hermanos*/
        hermanode(edwin, willian)
        hermanode(edwin, karla)
        hermanode(willian, edwin)
        hermanode(willian, karla)
        hermanade(karla, edwin)
        hermanade(karla, willian)

        /*Relaciones entre hermanos proveniente de mis tios maternos*/
        hermanode(carlos, refugio)
        hermanode(carlos, isidro)
        hermanode(carlos, roberto)
        hermanode(carlos, javier)
        hermanode(carlos, leticia)
        hermanode(carlos, rosa)
        hermanode(carlos, laura)

        hermanode(refugio, carlos)
        hermanode(refugio, isidro)
        hermanode(refugio, roberto)
        hermanode(refugio, javier)
        hermanode(refugio, leticia)
        hermanode(refugio, rosa)
        hermanode(refugio, laura)

        hermanode(isidro, carlos)
        hermanode(isidro, refugio)
        hermanode(isidro, roberto)
        hermanode(isidro, javier)
        hermanode(isidro, leticia)
        hermanode(isidro, rosa)
        hermanode(isidro, laura)

        hermanode(roberto, carlos)
        hermanode(roberto, refugio)
        hermanode(roberto, isidro)
        hermanode(roberto, javier)
        hermanode(roberto, leticia)
        hermanode(roberto, rosa)
        hermanode(roberto, laura)

        hermanode(javier, carlos)
        hermanode(javier, refugio)
        hermanode(javier, isidro)
        hermanode(javier, roberto)
        hermanode(javier, leticia)
        hermanode(javier, rosa)
        hermanode(javier, laura)

        hermanade(leticia, carlos)
        hermanade(leticia, refugio)
        hermanade(leticia, isidro)
        hermanade(leticia, roberto)
        hermanade(leticia, javier)
        hermanade(leticia, rosa)
        hermanade(leticia, laura)

        hermanade(rosa, carlos)
        hermanade(rosa, refugio)
        hermanade(rosa, isidro)
        hermanade(rosa, roberto)
        hermanade(rosa, javier)
        hermanade(rosa, leticia)
        hermanade(rosa, laura)

        hermanade(laura, carlos)
        hermanade(laura, refugio)
        hermanade(laura, isidro)
        hermanade(laura, roberto)
        hermanade(laura, javier)
        hermanade(laura, leticia)
        hermanade(laura, rosa)
        

/*Tios Paternos*/
/*------------------------------------------------------------------*/
tiop(ignacio)
hermano(ignacio)
hijo(ignacio)
padre(ignacio)
padrede(ignacio, tere)
padrede(ignacio, cristian)
    hija(tere)
    hermana(tere)
    prima(tere)
    primade(tere, jose)
    primade(tere, ivan)
    primade(tere, israel)
    hijo(cristian)
    hermano(cristian)
    primo(cristian)
    primode(cristian, jose)
    primode(cristian, ivan)
    primode(cristian, israel)
        padrede(ignacio, tere)
        padrede(ignacio, cristian)

        tiomde(ignacio, jose)
        tiomde(ignacio, israel)
        tiomde(ignacio, ivan)

        /*Relación entre hermanos*/
        hermanode(cristian, tere)
        hermanade(tere, cristian)


tiop(alejandro)
hermano(alejandro)
hijo(alejandro)
padre(alejandro)
padrede(alejandro, jason)
    hijo(jason)
    primo(jason)
    primode(jason, jose)
    primode(jason, ivan)
    primode(jason, israel)
        padrede(alejandro, jason)

        tiomde(alejandro, jose)
        tiomde(alejandro, israel)
        tiomde(alejandro, ivan)


tiap(martha)
hermana(martha)
hija(martha)
madre(martha)
madrede(martha, willian_l)
    hijo(willian_l)
    primo(willian_l)
    primode(willian_l, jose)
    primode(willian_l, ivan)
    primode(willian_l, israel)
        madrede(martha, willian_l)

        tiamde(martha, jose)
        tiamde(martha, israel)
        tiamde(martha, ivan)

tiap(veronica)
hermana(veronica)
hija(veronica)
madre(veronica)
madrede(veronica, alejandra)
madrede(veronica, aira)
madrede(veronica, anaury)

    hija(alejandra)
    prima(alejandra)
    primade(alejandra, jose)
    primade(alejandra, ivan)
    primade(alejandra, israel)
    hija(aira)
    prima(aira)
    primade(aira, jose)
    primade(aira, ivan)
    primade(aira, israel)
    hija(anaury)
    prima(anaury)
    primade(anaury, jose)
    primade(anaury, ivan)
    primade(anaury, israel)
        madrede(veronica, alejandra)
        madrede(veronica, aira)
        madrede(veronica, anaury)

        tiamde(veronica, jose)
        tiamde(veronica, israel)
        tiamde(veronica, ivan)

        /*Relación entre hermanos*/
        hermanade(alejandra, aira)
        hermanade(alejandra, anaury)
        hermanade(aira, alejandra)
        hermanade(aira, anaury)
        hermanade(anaury, alejandra)
        hermanade(anaury, aira)

        /*Relaciones entre hermanos proveniente de mis tios paternos*/
        hermanode(jose_padre, ignacio).
        hermanode(jose_padre, alejandro).
        hermanode(jose_padre, martha).
        hermanode(jose_padre, veronica).

        hermanode(ignacio, jose_padre).
        hermanode(ignacio, alejandro).
        hermanode(ignacio, martha).
        hermanode(ignacio, veronica).

        hermanode(alejandro, jose_padre).
        hermanode(alejandro, ignacio).
        hermanode(alejandro, martha).
        hermanode(alejandro, veronica).

        hermanade(martha, jose_padre).
        hermanade(martha, ignacio).
        hermanade(martha, alejandro).
        hermanade(martha, veronica).

        hermanade(veronica, jose_padre).
        hermanade(veronica, ignacio).
        hermanade(veronica, alejandro).
        hermanade(veronica, martha).


/*Abuelos Maternos*/
/*------------------------------------------------------------------*/
abuelom(salud)
padre(salud)
    abuelode(salud, jose)
    abuelode(salud, ivan)
    abuelode(salud, israel)
abuelam(paula)       
madre(paula)
    abuelade(salud, jose)
    abuelade(salud, ivan)
    abuelade(salud, israel)


/* Relaciones entre abuelos maternos y tíos maternos */
        padrede(salud, leticia)
        padrede(salud, carlos)
        padrede(salud, refugio)
        padrede(salud, isidro)
        padrede(salud, roberto)
        padrede(salud, javier)
        padrede(salud, laura)
        padrede(salud, rosa)
        madrede(paula, leticia)
        madrede(paula, carlos)
        madrede(paula, refugio)
        madrede(paula, isidro)
        madrede(paula, roberto)
        madrede(paula, javier)
        madrede(paula, rosa)
        madrede(paula, laura)


    /* Relaciones entre abuelos maternos y primos provenientes de tíos maternos */
        abuelode(salud, jonathan)
        abuelade(paula, jonathan)
        abuelode(salud, alexa)
        abuelade(paula, alexa)
        abuelode(salud, paola)
        abuelade(paula, paola)
        abuelode(salud, lizeth)
        abuelade(paula, lizeth)
        abuelode(salud, viviana)
        abuelade(paula, viviana)
        abuelode(salud, cesar)
        abuelade(paula, cesar)
        abuelode(salud, edwin)
        abuelade(paula, edwin)
        abuelode(salud, willian)
        abuelade(paula, willian)
        abuelode(salud, karla)
        abuelade(paula, karla)
 
/*Abuelos Paternos*/
/*------------------------------------------------------------------*/
abuelop(jose_abuelo)
padre(jose_abuelo)
    abuelode(jose_abuelo, jose)
    abuelode(jose_abuelo, ivan)
    abuelode(jose_abuelo, israel)
abuelap(martha_abuela)
madrede(martha_abuela)
    abuelade(martha_abuela, jose)
    abuelade(martha_abuela, ivan)
    abuelade(martha_abuela, israel)

        /* Relaciones entre abuelos paternos y tíos paternos */
        padrede(jose_abuelo, jose_padre)
        padrede(jose_abuelo, ignacio)
        padrede(jose_abuelo, alejandro)
        padrede(jose_abuelo, martha)
        padrede(jose_abuelo, veronica)
        madrede(martha_abuela, jose_padre)
        madrede(martha_abuela, ignacio)
        madrede(martha_abuela, alejandro)
        madrede(martha_abuela, martha)
        madrede(martha_abuela, veronica)

        /* Relaciones entre abuelos paternos y primos provenientes de tíos paternos */
        abuelode(jose_abuelo, tere)
        abuelade(martha_abuela, tere)
        abuelode(jose_abuelo, cristian)
        abuelade(martha_abuela, cristian)
        abuelode(jose_abuelo, jason)
        abuelade(martha_abuela, jason)
        abuelode(jose_abuelo, willian_l)
        abuelade(martha_abuela, willian_l)
        abuelode(jose_abuelo, alejandra)
        abuelade(martha_abuela, alejandra)
        abuelode(jose_abuelo, aira)
        abuelade(martha_abuela, aira)
        abuelode(jose_abuelo, anaury)
        abuelade(martha_abuela, anaury)