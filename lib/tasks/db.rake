namespace :db do
    desc "Populate local/staging data for testing purpose"
      task populate: :environment do
        animacion = Genre.create(
            name: "Animación",
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018219/pre-aceleracion/animacion_h43lsg.jpg"
        )
        aventura = Genre.create(
            name: "Aventura",
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018219/pre-aceleracion/aventura_vlycdu.jpg"
        )
        fantasia = Genre.create(
            name: "Fantasía",
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018219/pre-aceleracion/fantasia_cl353o.jpg"
        )
        infantil = Genre.create(
            name: "Infantil",
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018219/pre-aceleracion/infantil_kddbxs.jpg"
        )
        romance = Genre.create(
            name: "Romance",
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018220/pre-aceleracion/romance_y1yjvi.jpg"
        )

        aladdin_movie = Movie.create(
            title: "Aladdín",
            date_of_creation: "25/11/1992",
            qualification: 4,
            genre: aventura,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018282/pre-aceleracion/Aladdin_hw1ney.jpg"
        )

        hercules_movie = Movie.create(
            title: "Hércules",
            date_of_creation: "03/07/1997",
            qualification: 5,
            genre: fantasia,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018282/pre-aceleracion/Hercules_uaeeph.jpg"
        )


        el_retorno_de_jafar = Movie.create(
            title: "El retorno de Jafar",
            date_of_creation: "20/05/1994",
            qualification: 3,
            genre: infantil,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018282/pre-aceleracion/el_retorno_de_jafar_t3cdkp.jpg"
        )

        el_club_de_los_villanos_de_mickey_y_sus_amigos = Movie.create(
            title: "El club de los villanos de Mickey y sus amigos",
            date_of_creation: "03/09/2002",
            qualification: 4,
            genre: animacion,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018282/pre-aceleracion/el_club_de_los_villanos_cejupp.jpg"
        )

        la_bella_durmiente = Movie.create(
            title: "La bella durmiente",
            date_of_creation: "09/07/1959",
            qualification: 3,
            genre: romance,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018282/pre-aceleracion/La_bella_durmiente_nqvmhp.jpg"
        )

        aladdin = Character.create(
            name: "Aladdín",
            age: 18,
            weight: 63.2,
            history: "Vive en una guarida en el bazar de Ágrabah con su mono Abú, y sueña con vivir lleno de lujos. Cuando conoce a 
            Jasmín él no sabe que ella es la princesa, aunque él se enamora de ella. Cuando lo descubre, piensa que nunca conseguirá 
            gustarle, pero un anciano (el cual es en realidad el Gran Visir Jafar), le ofrece el trato de conseguir todo tipo de 
            fortunas con la ayuda de la Lámpara de la Cueva de las Maravillas, cuando Aladdíconsiguen  la lámpara, el anciano le 
            traiciona y le arroja a la cueva, pero Abú consiguió quitarle la Lámpara al anciano. Cuando Aladdín frota la lámpara, 
            de ella aparece un Genio, el cual le concede tres deseos. Así que Aladdín desea que le convierta en príncipe.",
            movie: aladdin_movie,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018189/pre-aceleracion/Aladdin_wwigeb.jpg"
        )

        aurora = Character.create(
            name: "Aurora",
            age: 16,
            weight: 48.0,
            history: "Aurora nace princesa, y las tres hadas Flora, Fauna y Primavera les da un don cada una. Flora le da el don de 
            la belleza, Fauna le da el don de una melodiosa voz. Luego aparece la malvada hechicera Maléfica y le lanza un hechizo 
            a Aurora, al cumplir los 16 años antes de que el sol se ponga, se pinchará el dedo con el uso de una rueca, y morirá. 
            Pero Primavera hace que cuando se pinche con el uso de una rueca no muera, solo se dormirá hasta el primer beso 
            de amor.",
            movie: la_bella_durmiente,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018206/pre-aceleracion/Aurora_fkjy9n.jpg"
        )


        filoctetes = Character.create(
            name: "Filoctetes",
            age: 552,
            weight: 46.8,
            history: "Es un sátiro (mitad hombre, mitad cabra), y la gente le llama simplemente Fil. Es muy mujeriego. Él entrenó a 
            Odiseo, Perseo, Teseo... docenas de -seos. También entrenó a Aquiles, lo convirtió en un gran héroe, hasta que su talón 
            le llevó a la ruina. Todos los héroes que entrenó fracasaron, ninguno llegó a la meta. Su sueño es entrenar al más 
            grande héroe que haya existido, tan grande que los Dioses colgarían su imagen con estrellas en el cielo y harían una 
            constelación en su nombre, y todo el mundo diría: ¡Ahí va el chico de Fil!. Hércules hizo su sueño realidad, cuando se 
            convirtió en el mayor héroe de la historia.",
            movie: hercules_movie,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018234/pre-aceleracion/Filoctetes_t4qcuw.jpg"
        )

        genio = Character.create(
            name: "Genio",
            age: 2500,
            weight: 80.3,
            history: "Es un espíritu cómico, muy poderoso, que actúa como un sirviente de quien tiene la propiedad de la Lámpara 
            Mágica en la que reside. Genio posee un poder cósmico que le permite conceder deseos, cambiar de forma y trascender en 
            el espacio y el tiempo; sin embargo, tiene la carga de permanecer atado a su lámpara toda una eternidad a menos que su 
            amo le otorgue la libertad.",
            movie: aladdin_movie,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018239/pre-aceleracion/Genio_bymplv.jpg"
        )

        hades = Character.create(
            name: "Hades",
            age: 4563002,
            weight: 82.4,
            history: "En el principio del mundo, cuando los dioses se repartieron el dominio del universo, a Hades le tocó en 
            suerte regir el Inframundo, decisión que al dios nunca le agradó del todo. Tiempo después, Hades, estando ya totalmente 
            harto de su hermano Zeus, el Rey de los Dioses, planea acabar con él y convertirse en el amo de todos.",
            movie: el_club_de_los_villanos_de_mickey_y_sus_amigos,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018243/pre-aceleracion/Hades_x44ten.jpg"
        )

        hercules = Character.create(
            name: "Hércules",
            age: 21,
            weight: 82.2,
            history: "Hijo de Zeus y Hera, desde niño mostró tener gran fuerza, valentía y amabilidad, tenía un gran futuro en el 
            Olimpo, pero su tío Hades le dio a sus esbirros una poción que Hércules debía beber hasta la última gota para 
            convertirlo en mortal y luego debían asesinarlo, pero el niño no bebió hasta la última gota, por lo cual se convirtió 
            en mortal pero no perdió su gran fuerza, lo que hizo que los esbirros de Hades no pudieran asesinarlo y lo abandonaron 
            a su suerte. Fue encontrado y criado por campesinos, y en su juventud quiso averiguar quien era realmente, así comenzó 
            su viaje y entrenamiento para convertirse en héroe, de la mano de Filoctetes.",
            movie: hercules_movie,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018742/pre-aceleracion/Hercules_q1this.webp"
        )

        jafar = Character.create(
            name: "Jafar",
            age: 45,
            weight: 61.7,
            history: "Es un malvado mago árabe y a la misma vez el ex-gran visir del Sultán de la ficticia ciudad de Ágrabah. Se 
            puede convertir en una cobra gigante gracias a su cetro mágico con forma de serpiente.",
            movie: el_retorno_de_jafar,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018250/pre-aceleracion/Jafar_mzapyh.jpg"
        )

        jasmin = Character.create(
            name: "Jasmín",
            age: 15,
            weight: 46.1,
            history: "Es la hija del Sultán de Ágrabah. Vive en el palacio con la única compañía de su tigre Rajah. Ella debe 
            casarse antes de su próximo cumpleaños, pero ella no quiere hacerlo con un arrogante miembro de la realeza, si se casa, 
            quiere que sea por amor. Ella, cuando huye del palacio para no casarse, conoce a Aladdín, de quien se enamora por que 
            es un buen muchacho. Aladdín se hace pasar por un príncipe para impresionarla, pero ella lo amaba tal y como es.",
            movie: aladdin_movie,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018254/pre-aceleracion/Jazmin_cfz4kl.jpg"
        )

        malefica = Character.create(
            name: "Maléfica",
            age: 55,
            weight: 54.2,
            history: "Al no haber sido invitada al bautizo de la Princesa Aurora, Maléfica maldijo a la pequeña diciendo que 
            después de la puesta del sol al cumplir los dieciséis años, se pinchará el dedo con el huso de una rueca y morirá. Sin 
            embargo, Flora, Fauna y Primavera ocultaron a la princesa en el bosque, y Maléfica mandó a sus esbirros a buscar a la 
            princesa durante dieciséis años para que se cumpla el maleficio, pero fracasaron. Maléfica envía a su cuervo Diablo, su 
            más fiel ayudante, a que busque a la princesa, lo cual tiene éxito, ya que descubre su paradero en una cabaña en el 
            bosque. Cuando Maléfica y sus esbirros van a la cabaña, aparece el Príncipe Felipe, que había quedado con Aurora, y 
            Maléfica le secuestra, para que así no rompa el hechizo con un beso de amor verdadero. Tras ello, hipnotiza a Aurora en 
            el castillo para que se pinche con una rueca, y así cumple la maldición. Mientras celebra su victoria, las Hadas entran 
            en su guarida y liberan a Felipe, quien se enfrenta a los guardias con la ayuda de las Hadas. Cuando Maléfica ve que 
            Felipe huye, usa sus poderes para que crezcan espinas alrededor del castillo, donde está Aurora. Pero Felipe se abre 
            paso con su espada. Por lo que Maléfica, usa toda su magia para transformarse en un dragón y enfrentarse a Felipe. Y 
            tras una dura batalla, Felipe clava su espada en el pecho de Maléfica transformada en dragón, y tras caer por un 
            precipicio, termina desapareciendo.",
            movie: el_club_de_los_villanos_de_mickey_y_sus_amigos,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018267/pre-aceleracion/Malefica_rsp9xi.jpg"
        )

        megara = Character.create(
            name: "Megara",
            age: 25,
            weight: 50.1,
            history: "Meg, que estaba loca por amor, le vendió su alma a Hades para salvar la vida de su novio. Pero poco después, 
            él la dejó por otra mujer, abandonándola y dejándola con el corazón roto y prisionera de Hades. Esto deja a Meg 
            sintiéndose atrapada y prometiendo nunca más enamorarse ni sentir nada por un hombre.",
            movie: hercules_movie,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018270/pre-aceleracion/Megara_pbzn7z.jpg"
        )

        pena = Character.create(
            name: "Pena",
            age: 4562908,
            weight: 22,
            history: "Es uno de los esbirros de Hades, junto a Pánico. Es capaz de convertirse en cualquier cosa que requiera la 
            trama, desde bichos hasta niños.",
            movie: hercules_movie,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018288/pre-aceleracion/Pena_y1xcxv.jpg"
        )

        panico = Character.create(
            name: "Pánico",
            age: 4562908,
            weight: 11,
            history: "Es uno de los esbirros de Hades, junto a Pena. Es capaz de convertirse en cualquier cosa que requiera la 
            trama, desde bichos hasta niños.",
            movie: hercules_movie,
            image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626018288/pre-aceleracion/panico_fmyfie.jpg"
        )
    end
end


