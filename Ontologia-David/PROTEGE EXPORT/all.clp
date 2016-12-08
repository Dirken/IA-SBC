

(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot apta_menores
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot adultos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tematica
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot menores
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot relevancia
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot preferencia
		(type STRING)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot epoca
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precio
		(type FLOAT)
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
	(single-slot fecha_nacimiento
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sala
		(type INSTANCE)
;+		(allowed-classes Sala)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot conocimiento
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot alto
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot estilo
		(type STRING)
		(create-accessor read-write))
	(single-slot complejidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nacionalidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre_centro
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot periodo_historico
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
	(single-slot duracion_visitas
;+		(comment "En horas.")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ancho
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Obra+de+arte
	(is-a USER)
	(role concrete)
	(single-slot apta_menores
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot estilo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot alto
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot complejidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tematica
		(type STRING)
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
	(single-slot periodo_historico
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sala
		(type INSTANCE)
;+		(allowed-classes Sala)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot relevancia
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ancho
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Visitante
	(is-a USER)
	(role abstract)
	(single-slot precio
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot conocimiento
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot n_dias_visita
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot duracion_visitas
;+		(comment "En horas.")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot preferencia
		(type STRING)
		(create-accessor read-write)))

(defclass Familia
	(is-a Visitante)
	(role concrete)
	(single-slot adultos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot menores
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Grupo+Normal
	(is-a Visitante)
	(role concrete)
	(single-slot adultos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Persona
	(is-a Visitante)
	(role concrete))

(defclass Grupo+Grande
	(is-a Visitante)
	(role concrete)
	(single-slot adultos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Grupo+Escolar
	(is-a Visitante)
	(role concrete)
	(single-slot adultos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre_centro
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot menores
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Artista
	(is-a USER)
	(role concrete)
	(single-slot fecha_nacimiento
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot estilo
		(type STRING)
		(create-accessor read-write))
	(single-slot nacionalidad
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
	(single-slot alto
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ancho
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(definstances Instances
	
	([Adan] of  Obra+de+arte
	
		(alto 209.0)
		(ancho 81.0)
		(apta_menores FALSE)
		(autor [Durero])
		(complejidad "Alta")
		(estilo "Renacimiento")
		(fecha_creacion "1507")
		(nombre "Adan")
		(periodo_historico "Renacimiento")
		(relevancia 2)
		(sala [Sala+E])
		(tematica "Arte cristiano"))
	
	([Autorretrato] of  Obra+de+arte
	
		(alto 52.0)
		(ancho 41.0)
		(apta_menores TRUE)
		(autor [Durero])
		(complejidad "Alta")
		(estilo "Renacimiento")
		(fecha_creacion "1498")
		(nombre "Autorretrato")
		(periodo_historico "Renacimiento nordico")
		(relevancia 1)
		(sala [Sala+C])
		(tematica "Autorretrato"))
	
	([Bosco] of  Artista
	
		(epoca "Renacimiento")
		(estilo "Naturalista")
		(fecha_nacimiento "1450")
		(nacionalidad "Paises Bajos")
		(nombre "Bosco")
		(periodo_historico
			"Pintura flamenca"
			"Renacimiento"))
	
	([Caravaggio] of  Artista
	
		(epoca "Barroco-Renacentista")
		(estilo "Naturalista")
		(fecha_nacimiento "1571")
		(nacionalidad "Romana")
		(nombre "Caravaggio")
		(periodo_historico
			"Barroco"
			"Renacimiento"))
	
	([Caza+con+reclamo] of  Obra+de+arte
	
		(alto 112.0)
		(ancho 179.0)
		(apta_menores TRUE)
		(autor [Goya])
		(complejidad "Media")
		(estilo "Rococo")
		(fecha_creacion "1775")
		(nombre "Caza con reclamo")
		(periodo_historico "Romanticismo")
		(relevancia 2)
		(sala [Sala+D])
		(tematica "Paisaje"))
	
	([David+vencedor+de+Goliath] of  Obra+de+arte
	
		(alto 110.4)
		(ancho 91.3)
		(apta_menores TRUE)
		(autor [Caravaggio])
		(complejidad "Alta")
		(estilo "Barroco")
		(fecha_creacion "1599")
		(nombre "David vencedor de Goliath")
		(periodo_historico "Barroco")
		(relevancia 2)
		(sala [Sala+D])
		(tematica "Arte cristiano"))
	
	([Durero] of  Artista
	
		(epoca "Renacimiento")
		(estilo "Naturalista")
		(fecha_nacimiento "1471")
		(nacionalidad "Alemana")
		(nombre "Durero")
		(periodo_historico "Alto Renacimiento"))
	
	([El+3+de+Mayo+de+1808] of  Obra+de+arte
	
		(alto 268.0)
		(ancho 347.0)
		(autor [Goya])
		(complejidad "Muy alta")
		(estilo "Prerromanticismo")
		(fecha_creacion "1814")
		(nombre "El 3 de Mayo de 1808")
		(periodo_historico "Romanticismo")
		(relevancia 4)
		(sala [Sala+A])
		(tematica "Pintura de historia"))
	
	([El+embarco+de+Santa+Paula+Romana] of  Obra+de+arte
	
		(alto 211.0)
		(ancho 145.0)
		(apta_menores TRUE)
		(autor [Lorena])
		(complejidad "Muy alta")
		(estilo "Clacisismo")
		(fecha_creacion "1639-1640")
		(nombre "El embarco de Santa Paula Romana")
		(periodo_historico "Barroco")
		(relevancia 2)
		(sala [Sala+D])
		(tematica "Paisaje"))
	
	([El+jardin+de+las+delicias] of  Obra+de+arte
	
		(alto 205.6)
		(ancho 386.0)
		(apta_menores TRUE)
		(autor [Bosco])
		(complejidad "Muy alta")
		(estilo "Gotico")
		(fecha_creacion "1503-1515")
		(nombre "El jardin de las delicias")
		(periodo_historico "Renacimiento nordico")
		(relevancia 1)
		(sala [Sala+B])
		(tematica "Arte cristiano"))
	
	([El+juicio+de+Paris] of  Obra+de+arte
	
		(alto 199.0)
		(ancho 381.0)
		(autor [Rubens])
		(complejidad "Muy alta")
		(estilo "Barroco")
		(fecha_creacion "1638")
		(nombre "El juicio de Paris")
		(periodo_historico "Barroco")
		(relevancia 4)
		(sala [Sala+B])
		(tematica "Pintura de historia"))
	
	([Eva] of  Obra+de+arte
	
		(alto 209.0)
		(ancho 80.0)
		(apta_menores FALSE)
		(autor [Durero])
		(complejidad "Media")
		(estilo "Renacimiento")
		(fecha_creacion "1507")
		(nombre "Eva")
		(periodo_historico "Renacimiento")
		(relevancia 2)
		(sala [Sala+D])
		(tematica "Arte cristiano"))
	
	([F001] of  Familia
	
		(adultos 2)
		(conocimiento "Nada")
		(duracion_visitas 1.5)
		(menores 2)
		(n_dias_visita 2)
		(precio 15.0))
	
	([F002] of  Familia
	
		(adultos 4)
		(conocimiento "Medio")
		(duracion_visitas 2.0)
		(menores 2)
		(n_dias_visita 1)
		(precio 25.0)
		(preferencia
			"Goya"
			"Velazquez"))
	
	([GE001] of  Grupo+Escolar
	
		(adultos 2)
		(conocimiento "Nada")
		(duracion_visitas 2.0)
		(menores 12)
		(n_dias_visita 1)
		(nombre_centro "Pau Vila")
		(precio 50.0)
		(preferencia
			"Renacimiento"
			"Rubens"))
	
	([GE002] of  Grupo+Escolar
	
		(adultos 2)
		(conocimiento "Nada")
		(duracion_visitas 2.0)
		(menores 12)
		(n_dias_visita 1)
		(nombre_centro "Roques Blaves")
		(precio 36.0)
		(preferencia "España"))
	
	([GG001] of  Grupo+Grande
	
		(adultos 5)
		(conocimiento "Medio")
		(duracion_visitas 3.0)
		(n_dias_visita 3)
		(precio 40.0)
		(preferencia "Bosco"))
	
	([Goya] of  Artista
	
		(epoca "Romanticismo")
		(estilo
			"Barroco"
			"Neoclasico")
		(fecha_nacimiento "1828")
		(nacionalidad "Francesa")
		(nombre "Goya")
		(periodo_historico "Romanticismo"))
	
	([GP001] of  Grupo+Normal
	
		(adultos 2)
		(conocimiento "Nada")
		(duracion_visitas 1.5)
		(n_dias_visita 1)
		(precio 15.0)
		(preferencia "Renacimiento"))
	
	([GP002] of  Grupo+Normal
	
		(adultos 4)
		(conocimiento "Medio")
		(duracion_visitas 1.5)
		(n_dias_visita 1)
		(precio 20.0)
		(preferencia "Romanticismo"))
	
	([GP003] of  Grupo+Normal
	
		(adultos 2)
		(conocimiento "Alto")
		(duracion_visitas 3.0)
		(n_dias_visita 3)
		(precio 20.0))
	
	([Greco] of  Artista
	
		(epoca "Renacimiento")
		(estilo
			"Bizantino"
			"Manierismo"
			"Antinaturalismo")
		(fecha_nacimiento "1541")
		(nacionalidad "Griega")
		(nombre "Greco")
		(periodo_historico "Renacimiento"))
	
	([La+Crucifixion] of  Obra+de+arte
	
		(alto 312.0)
		(ancho 169.0)
		(apta_menores TRUE)
		(autor [Greco])
		(complejidad "Alta")
		(estilo "Manierismo")
		(fecha_creacion "1597-1600")
		(nombre "La Crucifixion")
		(periodo_historico "Alto Renacimiento")
		(relevancia 2)
		(sala [Sala+C])
		(tematica "Arte cristiano"))
	
	([La+huida+a+Egipto] of  Obra+de+arte
	
		(alto 15.9)
		(ancho 21.6)
		(apta_menores TRUE)
		(autor [Greco])
		(complejidad "Alta")
		(estilo "Manierismo")
		(fecha_creacion "1570")
		(nombre "La huida a Egipto")
		(periodo_historico "Alto Renacimiento")
		(relevancia 3)
		(sala [Sala+E])
		(tematica "Arte cristiano"))
	
	([La+venerable+madre+Jeronima+de+la+Fuente] of  Obra+de+arte
	
		(alto 160.0)
		(ancho 110.0)
		(apta_menores TRUE)
		(autor [Velazquez])
		(complejidad "Media")
		(estilo "Barroco")
		(fecha_creacion "1620")
		(nombre "La venerable madre Jeronima de la Fuente")
		(periodo_historico "Romanticismo")
		(relevancia 2)
		(sala [Sala+B])
		(tematica "Retrato"))
	
	([Las+Meninas] of  Obra+de+arte
	
		(alto 318.0)
		(ancho 276.0)
		(apta_menores TRUE)
		(autor [Velazquez])
		(complejidad "Alta")
		(estilo "Barroco")
		(fecha_creacion "1656")
		(nombre "Las Meninas")
		(periodo_historico "Barroco")
		(relevancia 3)
		(sala [Sala+A])
		(tematica "Retrato"))
	
	([Las+Tres+Gracias] of  Obra+de+arte
	
		(alto 221.0)
		(ancho 181.0)
		(autor [Rubens])
		(complejidad "Alta")
		(estilo "Barroco")
		(fecha_creacion "1636-1639")
		(nombre "Las Tres Gracias")
		(periodo_historico "Barroco")
		(relevancia 1)
		(sala [Sala+E])
		(tematica "Pintura de historia"))
	
	([Lorena] of  Artista
	
		(epoca "Barroco")
		(estilo
			"Manierismo"
			"Barroco")
		(fecha_nacimiento "1600")
		(nacionalidad "Francesa")
		(nombre "Lorena")
		(periodo_historico
			"Barroco"
			"Renacimiento"))
	
	([Mesa+de+los+Pecados+Capitales] of  Obra+de+arte
	
		(alto 119.5)
		(ancho 139.8)
		(autor [Bosco])
		(complejidad "Media")
		(estilo "Gotico")
		(fecha_creacion "1505 - 1510")
		(nombre "Mesa de los Pecados Capitales")
		(periodo_historico "Renacimiento nordico")
		(relevancia 4)
		(sala [Sala+C])
		(tematica "Arte cristiano"))
	
	([P001] of  Persona
	
		(conocimiento "Nada")
		(duracion_visitas 2.5)
		(n_dias_visita 2)
		(precio 10.0))
	
	([P002] of  Persona
	
		(conocimiento "Medio")
		(duracion_visitas 1.5)
		(n_dias_visita 1)
		(precio 5.0)
		(preferencia
			"Velazquez"
			"Bosco"
			"Rococo"))
	
	([P003] of  Persona
	
		(conocimiento "Medio")
		(duracion_visitas 1.5)
		(n_dias_visita 1)
		(precio 5.0)
		(preferencia "Francia"))
	
	([P004] of  Persona
	
		(conocimiento "Alto")
		(duracion_visitas 1.0)
		(n_dias_visita 3)
		(precio 5.0)
		(preferencia "Barroco"))
	
	([Perros+en+trailla] of  Obra+de+arte
	
		(alto 112.0)
		(ancho 174.0)
		(apta_menores TRUE)
		(autor [Goya])
		(complejidad "Media")
		(estilo "Rococo")
		(fecha_creacion "1775")
		(nombre "Perros en trailla")
		(periodo_historico "Romanticismo")
		(relevancia 2)
		(sala [Sala+A])
		(tematica "Paisaje"))
	
	([Retrato+de+hombre] of  Obra+de+arte
	
		(alto 55.5)
		(ancho 38.0)
		(apta_menores TRUE)
		(autor [Velazquez])
		(complejidad "Media")
		(estilo "Barroco")
		(fecha_creacion "hacia 1623")
		(nombre "Retrato de hombre")
		(periodo_historico "Romanticismo")
		(relevancia 2)
		(sala [Sala+D])
		(tematica "Retrato"))
	
	([Retrato+ecuestre+del+duque+de+Lerma] of  Obra+de+arte
	
		(alto 290.5)
		(ancho 207.5)
		(apta_menores TRUE)
		(autor [Rubens])
		(complejidad "Alta")
		(estilo "Barroco")
		(fecha_creacion "1603")
		(nombre "Retrato ecuestre del duque de Lerma")
		(periodo_historico "Barroco")
		(relevancia 2)
		(sala [Sala+D])
		(tematica "Retrato"))
	
	([Rubens] of  Artista
	
		(epoca "Barroco")
		(estilo "Barroco")
		(fecha_nacimiento "1577")
		(nacionalidad "Alemana")
		(nombre "Rubens")
		(periodo_historico
			"Barroco"
			"Escuela de Amberes"))
	
	([Sala+A] of  Sala
	
		(alto 400.0)
		(ancho 810.0)
		(nombre "Sala A"))
	
	([Sala+B] of  Sala
	
		(alto 1500.0)
		(ancho 700.0)
		(nombre "Sala B"))
	
	([Sala+C] of  Sala
	
		(alto 700.0)
		(ancho 500.0)
		(nombre "Sala C"))
	
	([Sala+D] of  Sala
	
		(alto 2000.0)
		(ancho 1000.0)
		(nombre "Sala D"))
	
	([Sala+E] of  Sala
	
		(alto 4000.0)
		(ancho 4000.0)
		(nombre "Sala E"))
	
	([Saturno+devorando+a+un+hijo] of  Obra+de+arte
	
		(alto 146.0)
		(ancho 83.0)
		(autor [Goya])
		(complejidad "Alta")
		(estilo "Romanticismo")
		(fecha_creacion "1819-1823")
		(nombre "Saturno devorando a un hijo")
		(periodo_historico "Renacimiento")
		(relevancia 3)
		(sala [Sala+C])
		(tematica "Crono"))
	
	([Triptico+de+la+Adoracion+de+los+Magos] of  Obra+de+arte
	
		(alto 138.0)
		(ancho 72.0)
		(apta_menores TRUE)
		(autor [Bosco])
		(complejidad "Media")
		(estilo "Gotico")
		(fecha_creacion "1485-1500")
		(nombre "Triptico de la Adoracion de los Magos")
		(periodo_historico "Renacimiento nordico")
		(relevancia 4)
		(sala [Sala+A])
		(tematica "Arte cristiano"))
	
	([Velazquez] of  Artista
	
		(epoca "Barroco")
		(estilo "Naturalista")
		(fecha_nacimiento "1599")
		(nacionalidad "Espanola")
		(nombre "Velazquez")
		(periodo_historico "Barroco"))
)
