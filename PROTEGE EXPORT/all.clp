(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot fecha_nacimiento
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot preferencia
		(type STRING)
		(create-accessor read-write))
	(single-slot n_dias_visita
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numero_visita
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot relevancia
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot duracion_visitas
;+		(comment "En horas.")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dimensiones
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot conocimiento
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot complejidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot autor
		(type INSTANCE)
;+		(allowed-classes Artista)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot adultos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sala
		(type INSTANCE)
;+		(allowed-classes Sala)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fecha_creacion
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precio
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nacionalidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tematica
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot periodo_historico
		(type STRING)
		(create-accessor read-write))
	(single-slot epoca
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot menores
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot estilo
		(type STRING)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Obras+de+arte
	(is-a USER)
	(role concrete)
	(single-slot relevancia
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot autor
		(type INSTANCE)
;+		(allowed-classes Artista)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fecha_creacion
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot estilo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sala
		(type INSTANCE)
;+		(allowed-classes Sala)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tematica
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dimensiones
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot complejidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot periodo_historico
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Visitantes
	(is-a USER)
	(role abstract)
	(single-slot duracion_visitas
;+		(comment "En horas.")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precio
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot preferencia
		(type STRING)
		(create-accessor read-write))
	(single-slot n_dias_visita
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot conocimiento
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numero_visita
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Familia
	(is-a Visitantes)
	(role concrete)
	(single-slot menores
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot adultos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Grupo+normal
	(is-a Visitantes)
	(role concrete)
	(single-slot adultos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Persona
	(is-a Visitantes)
	(role concrete))

(defclass Grupo+grande
	(is-a Visitantes)
	(role concrete)
	(single-slot adultos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Artista
	(is-a USER)
	(role concrete)
	(multislot estilo
		(type STRING)
		(create-accessor read-write))
	(single-slot nacionalidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fecha_nacimiento
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot periodo_historico
		(type STRING)
		(create-accessor read-write))
	(single-slot epoca
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Sala
	(is-a USER)
	(role concrete)
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dimensiones
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(definstances instances
	([Autorretrato] of  Obras+de+arte

		(autor [Durero])
		(complejidad "Alta")
		(dimensiones "52 cm × 41 cm")
		(estilo "Renacimiento")
		(fecha_creacion "1498")
		(nombre "Autorretrato")
		(periodo_historico "Renacimiento nórdico")
		(relevancia 1)
		(sala [Sala+C])
		(tematica "Autorretrato"))

	([Bosco] of  Artista

		(epoca "Renacimiento")
		(estilo "naturalista")
		(fecha_nacimiento "1450")
		(nacionalidad "Paises Bajos")
		(nombre "Bosco")
		(periodo_historico
			"Pintura flamenca"
			"Renacimiento"))

	([Caravaggio] of  Artista

		(epoca "Barroco-Renacentista")
		(estilo "naturalista")
		(fecha_nacimiento "1571")
		(nacionalidad "Romana")
		(nombre "Caravaggio")
		(periodo_historico
			"Barroco"
			"Renacimiento"))

	([David+vencedor+de+Goliath] of  Obras+de+arte

		(autor [Caravaggio])
		(complejidad "Alta")
		(dimensiones "1,1 m x 91 cm")
		(estilo "Barroco")
		(fecha_creacion "1599")
		(nombre "David vencedor de Goliath")
		(periodo_historico "Barroco")
		(relevancia 2)
		(sala [Sala+D])
		(tematica "Arte cristiano"))

	([Durero] of  Artista

		(epoca "Renacimiento")
		(estilo "naturalista")
		(fecha_nacimiento "1471")
		(nacionalidad "Alemana")
		(nombre "Durero")
		(periodo_historico "Alto Renacimiento"))

	([El+3+de+Mayo+de+1808] of  Obras+de+arte

		(autor [Goya])
		(complejidad "Muy alta")
		(dimensiones "2,68 m x 3,47 m")
		(estilo "Prerromanticismo")
		(fecha_creacion "1814")
		(nombre "El 3 de Mayo de 1808")
		(periodo_historico "Romanticismo")
		(relevancia 4)
		(sala [Sala+A])
		(tematica "Pintura de historia"))

	([El+embarco+de+Santa+Paula+Romana] of  Obras+de+arte

		(autor [Lorena])
		(complejidad "Muy alta")
		(dimensiones "211 cm x 145 cm")
		(estilo "Clacisismo")
		(fecha_creacion "1639-1640")
		(nombre "El embarco de Santa Paula Romana")
		(periodo_historico "Barroco")
		(relevancia 2)
		(sala [Sala+D])
		(tematica "Paisaje"))

	([El+jard%C3%ADn+de+las+delicias] of  Obras+de+arte

		(autor [Bosco])
		(complejidad "Muy alta")
		(dimensiones "2,2 m x 3,89 m")
		(estilo "Gótico")
		(fecha_creacion "1503-1515")
		(nombre "El jardín de las delicias")
		(periodo_historico "Renacimiento nórdico")
		(relevancia 1)
		(sala [Sala+B])
		(tematica "Arte cristiano"))

	([Goya] of  Artista

		(epoca "Romanticismo")
		(estilo
			"Barroco"
			"Neoclasico")
		(fecha_nacimiento "1828")
		(nacionalidad "Francesa")
		(nombre "Goya")
		(periodo_historico "Romanticismo"))

	([Greco] of  Artista

		(epoca "Renacimiento")
		(fecha_nacimiento "1541")
		(nacionalidad "Griega")
		(nombre "Greco")
		(periodo_historico "Renacimiento"))

	([La+Crucifixi%C3%B3n] of  Obras+de+arte

		(autor [Greco])
		(complejidad "Alta")
		(dimensiones "312 cm × 169 cm")
		(estilo "Manierismo")
		(fecha_creacion "1597-1600")
		(nombre "La Crucifixión")
		(periodo_historico "Alto Renacimiento")
		(relevancia 2)
		(sala [Sala+C])
		(tematica "Arte cristiano"))

	([Las+meninas] of  Obras+de+arte

		(autor [Vel%C3%A1zquez])
		(complejidad "Alta")
		(dimensiones "318 cm × 276 cm")
		(estilo "Barroco")
		(fecha_creacion "1656")
		(nombre "Las meninas")
		(periodo_historico "Barroco")
		(relevancia 3)
		(sala [Sala+A])
		(tematica "Retrato"))

	([Las+Tres+Gracias] of  Obras+de+arte

		(autor [Rubens])
		(complejidad "Alta")
		(dimensiones "221 cm × 181 cm")
		(estilo "Barroco")
		(fecha_creacion "1636-1639")
		(nombre "Las Tres Gracias")
		(periodo_historico "Barroco")
		(relevancia 1)
		(sala [Sala+E])
		(tematica "Pintura de historia"))

	([Lorena] of  Artista

		(epoca "Barroco")
		(fecha_nacimiento "1600")
		(nacionalidad "Francesa")
		(nombre "Lorena")
		(periodo_historico
			"Barroco"
			"Renacimiento"))

	([Ontologia_Class13] of  Familia

		(adultos 2)
		(conocimiento "Nada")
		(duracion_visitas 1.5)
		(menores 2)
		(n_dias_visita 2)
		(numero_visita "F001")
		(precio 15.0))

	([Ontologia_Class15] of  Grupo+grande

		(adultos 5)
		(conocimiento "Nada")
		(duracion_visitas 3.0)
		(n_dias_visita 3)
		(numero_visita "GG001")
		(precio 40.0))

	([Ontologia_Class16] of  Grupo+normal

		(adultos 2)
		(conocimiento "Nada")
		(duracion_visitas 1.5)
		(n_dias_visita 1)
		(numero_visita "GP001")
		(precio 20.0))

	([Ontologia_Class17] of  Persona

		(conocimiento "Nada")
		(duracion_visitas 2.5)
		(n_dias_visita 2)
		(numero_visita "P001")
		(precio 5.0))

	([Rubens] of  Artista

		(epoca "Barroco")
		(fecha_nacimiento "1577")
		(nacionalidad "Alemana")
		(nombre "Rubens")
		(periodo_historico
			"Barroco"
			"Escuela de Amberes"))

	([Sala+A] of  Sala

		(dimensiones "4 m x 5 m")
		(nombre "Sala A"))

	([Sala+B] of  Sala

		(dimensiones "6 m x 8 m")
		(nombre "Sala B"))

	([Sala+C] of  Sala

		(dimensiones "12 m x 24 m")
		(nombre "Sala C"))

	([Sala+D] of  Sala

		(dimensiones "14 m x 7 m")
		(nombre "Sala D"))

	([Sala+E] of  Sala

		(dimensiones "4 m x 9 m")
		(nombre "Sala E"))

	([Saturno+devorando+a+un+hijo] of  Obras+de+arte

		(autor [Goya])
		(complejidad "Alta")
		(dimensiones "1,43 m x 81 cm")
		(estilo "Romanticismo")
		(fecha_creacion "1819-1823")
		(nombre "Saturno devorando a un hijo")
		(periodo_historico "Renacimiento")
		(relevancia 3)
		(sala [Sala+C])
		(tematica "Crono"))

	([Vel%C3%A1zquez] of  Artista

		(estilo "naturalista")
		(fecha_nacimiento "1599")
		(nacionalidad "Española")
		(nombre "Velázquez")
		(periodo_historico "Barroco"))
)

