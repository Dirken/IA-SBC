; Wed Dec 07 18:41:31 CET 2016
; 
;+ (version "3.5")
;+ (build "Build 663")


; (load /Users/Eironeia/Documents/Universitat/IA/IA-SBC/Practica/practica.clp)
;;---------------------------------------------------------
;;
;; PONT
;;
;;---------------------------------------------------------

(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(multislot inverse_of_Obras
		(type INSTANCE)
;+		(allowed-classes ObraDeArte)
		(create-accessor read-write))
	(single-slot DiasVisita
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Epoca
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nacionalidad
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Cristo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Preferencias
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Mayor18
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Sala
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relevancia
		(type INTEGER)
		(range 0 10)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot DuracionVisita
		(type INTEGER)
		(range 0 15)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NombreObra
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot KB_388996_Class18
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Muerte
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Frutas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Tipo
		(type SYMBOL)
		(allowed-values Individuo Familia GrupoPequenyo GrupoGrande)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Violento
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Dimensiones
		(type SYMBOL)
		(allowed-values Pequenyo Mediano Grande)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Autor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Tematica
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Autorretrato
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ConocimientoArte
		(type SYMBOL)
		(allowed-values Bajo Medio Alto)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot AnyoCreacion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Complejidad
		(type INTEGER)
		(range 0 10)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Eden
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Flores
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Estilo
		(type STRING)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Obras
		(type INSTANCE)
;+		(allowed-classes ObraDeArte)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Famoso
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass ObraDeArte
	(is-a USER)
	(role concrete)
	(single-slot Complejidad
		(type INTEGER)
		(range 0 10)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Dimensiones
		(type SYMBOL)
		(allowed-values Pequenyo Mediano Grande)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Autor
		(type INSTANCE)
;+		(allowed-classes Pintor)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Estilo
		(type STRING)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Sala
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Mayor18
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot AnyoCreacion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Epoca
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relevancia
		(type INTEGER)
		(range 0 10)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Tematica
		(type SYMBOL)
		(allowed-values Belico Religioso RetratoOtros RetratoPersonas Paisaje)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Religioso
	(is-a ObraDeArte)
	(role concrete)
	(single-slot Cristo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Eden
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Retrato
	(is-a ObraDeArte)
	(role concrete))

(defclass Personas
	(is-a Retrato)
	(role concrete)
	(single-slot Autorretrato
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Famoso
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Otros
	(is-a Retrato)
	(role concrete)
	(single-slot Frutas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Flores
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Belico
	(is-a ObraDeArte)
	(role concrete)
	(single-slot Violento
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Muerte
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Pintor
	(is-a USER)
	(role concrete)
	(single-slot Nacionalidad
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Estilo
		(type STRING)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Obras
		(type INSTANCE)
;+		(allowed-classes ObraDeArte)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Epoca
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Visitante
	(is-a USER)
	(role concrete)
	(single-slot DuracionVisita
		(type INTEGER)
		(range 0 15)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot DiasVisita
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Preferencias
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Tipo
		(type SYMBOL)
		(allowed-values Individuo Familia GrupoPequenyo GrupoGrande)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ConocimientoArte
		(type SYMBOL)
		(allowed-values Bajo Medio Alto)
;+		(cardinality 1 1)
		(create-accessor read-write)))

;;---------------------------------------------------------
;;
;; PINS
;;
;;---------------------------------------------------------

(definstances instances
;;---------------------------------------------------------------------
;;---------------------------------------------------------------------
;; Obras de Arte, sin pertencer a ninguna subclase
;;---------------------------------------------------------------------
;;---------------------------------------------------------------------

([El+embarco+de+Santa+Paula+Romana] of ObraDeArte

	(AnyoCreacion 1640)
	(Autor [Lorena])
	(Complejidad 10)
	(Dimensiones Mediano)
	(Epoca "Barroco")
	(Estilo "Clasicismo")
	(Mayor18 FALSE)
	(Nombre "El embarco de Santa Paula Romana")
	(Relevancia 10)
	(Sala 2)
	(Tematica Paisaje))

;;---------------------------------------------------------------------
;;---------------------------------------------------------------------
;; Obras de Arte, pertenecientes a la subclase Retrato, Personas
;;---------------------------------------------------------------------
;;---------------------------------------------------------------------


([Retrato+de+una+niña] of Personas
	(AnyoCreacion 1660)
	(Autor [Antolinez])
	(Autorretrato FALSE)
	(Complejidad 6)
	(Dimensiones Pequenyo)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Famoso FALSE)
	(Mayor18 FALSE)
	(Nombre "Retrato de una niña")
	(Relevancia 4)
	(Sala 4)
	(Tematica RetratoPersonas))


([Autoretrato] of Personas
	(AnyoCreacion 1498)
	(Autor [Durero])
	(Autorretrato TRUE)
	(Complejidad 8)
	(Dimensiones Pequenyo)
	(Epoca "Renacimiento")
	(Estilo "Renacimiento")
	(Famoso TRUE)
	(Mayor18 FALSE)
	(Nombre "Autorretrato")
	(Relevancia 9)
	(Sala 4)
	(Tematica RetratoPersonas))

([Felipe+de+Borbon+y+Farnesio,+futuro+duque+de+Parma] of Personas
	(AnyoCreacion 1731)
	(Autor [Ranc])
	(Autorretrato FALSE)
	(Complejidad 6)
	(Dimensiones Pequenyo)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Famoso TRUE)
	(Mayor18 FALSE)
	(Nombre "Felipe de Borbon y Farnesio,futuro duque de Parma")
	(Relevancia 2)
	(Sala 4)
	(Tematica RetratoPersonas))

([Carlos+III,+ninyo] of Personas
	(AnyoCreacion 1724)
	(Autor [Ranc])
	(Autorretrato FALSE)
	(Complejidad 8)
	(Dimensiones Mediano)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Famoso TRUE)
	(Mayor18 FALSE)
	(Nombre "Autorretrato")
	(Relevancia 3)
	(Sala 4)
	(Tematica RetratoPersonas))

([Cleopatra] of Personas
	(AnyoCreacion 1640)
	(Autor [Reni])
	(Autorretrato FALSE)
	(Complejidad 8)
	(Dimensiones Pequenyo)
	(Epoca "Barroco")
	(Estilo "Clasicismo")
	(Famoso TRUE)
	(Mayor18 FALSE)
	(Nombre "Cleopatra")
	(Relevancia 6)
	(Sala 3)
	(Tematica RetratoPersonas))

([Retrato+ecuestre+del+duque+de+Lerma] of Personas
	(AnyoCreacion 1603)
	(Autor [Rubens])
	(Autorretrato FALSE)
	(Complejidad 9)
	(Dimensiones Grande)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Famoso TRUE)
	(Mayor18 FALSE)
	(Nombre "Retrato ecuestre del duque de Lerma")
	(Relevancia 9)
	(Sala 2)
	(Tematica RetratoPersonas))

([Autorretrato2] of Personas
	(AnyoCreacion 1565)
	(Autor [Tiziano])
	(Autorretrato TRUE)
	(Complejidad 6)
	(Dimensiones Pequenyo)
	(Epoca "Renacimiento")
	(Estilo "Renacimiento")
	(Famoso TRUE)
	(Mayor18 FALSE)
	(Nombre "Autorretrato")
	(Relevancia 7)
	(Sala 3)
	(Tematica RetratoPersonas))

([Felipe+II] of Personas
	(AnyoCreacion 1565)
	(Autor [Tiziano])
	(Autorretrato FALSE)
	(Complejidad 6)
	(Dimensiones Grande)
	(Epoca "Renacimiento")
	(Estilo "Renacimiento")
	(Famoso TRUE)
	(Mayor18 FALSE)
	(Nombre "Felipe II")
	(Relevancia 3)
	(Sala 3)
	(Tematica RetratoPersonas))

([Las+Meninas] of Personas
	(AnyoCreacion 1656)
	(Autor [Velazquez])
	(Autorretrato FALSE)
	(Complejidad 7)
	(Dimensiones Mediano)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Famoso TRUE)
	(Mayor18 FALSE)
	(Nombre "Las Meninas")
	(Relevancia 10)
	(Sala 1)
	(Tematica RetratoPersonas))

([La+venerable+madre+Jeronima+de+la+Fuente] of Personas
	(AnyoCreacion 1620)
	(Autor [Velazquez])
	(Autorretrato FALSE)
	(Complejidad 7)
	(Dimensiones Mediano)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Famoso TRUE)
	(Mayor18 FALSE)
	(Nombre "La venerable madre Jeronima de la Fuente")
	(Relevancia 8)
	(Sala 2)
	(Tematica RetratoPersonas))

([Retrato+de+hombre] of Personas
	(AnyoCreacion 1623)
	(Autor [Velazquez])
	(Autorretrato FALSE)
	(Complejidad 6)
	(Dimensiones Pequenyo)
	(Epoca "Romanticismo")
	(Estilo "Barroco")
	(Famoso FALSE)
	(Mayor18 FALSE)
	(Nombre "Retrato de hombre")
	(Relevancia 5)
	(Sala 2)
	(Tematica RetratoPersonas))


;;---------------------------------------------------------------------
;;---------------------------------------------------------------------
;; Obras de Arte, pertenecientes a la subclase Retratos Otros
;;---------------------------------------------------------------------
;;---------------------------------------------------------------------

([Florero+de+cristal] of  Otros

	(AnyoCreacion 1668)
	(Autor [Arellano])
	(Complejidad 6)
	(Dimensiones Pequenyo)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Flores TRUE)
	(Frutas FALSE)
	(Mayor18 FALSE)
	(Nombre "Florero de cristal")
	(Relevancia 5)
	(Sala 1)
	(Tematica RetratoOtros))

([Bodegon+de+frutas] of  Otros

	(AnyoCreacion 1660)
	(Autor [Arellano])
	(Complejidad 8)
	(Dimensiones Pequenyo)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Flores FALSE)
	(Frutas TRUE)
	(Mayor18 FALSE)
	(Nombre "Bodegon de frutas")
	(Relevancia 3)
	(Sala 4)
	(Tematica RetratoOtros))

([Caza+con+reclamo] of  Otros

	(AnyoCreacion 1775)
	(Autor [Goya])
	(Complejidad 3)
	(Dimensiones Mediano)
	(Epoca "Romanticismo")
	(Estilo "Rococo")
	(Flores FALSE)
	(Frutas FALSE)
	(Mayor18 FALSE)
	(Nombre "Caza con reclamo")
	(Relevancia 4)
	(Sala 3)
	(Tematica RetratoOtros))

([Perros+en+trailla] of  Otros

	(AnyoCreacion 1775)
	(Autor [Goya])
	(Complejidad 4)
	(Dimensiones Mediano)
	(Epoca "Romanticismo")
	(Estilo "Rococo")
	(Flores FALSE)
	(Frutas FALSE)
	(Mayor18 FALSE)
	(Nombre "Caza con reclamo")
	(Relevancia 4)
	(Sala 3)
	(Tematica RetratoOtros))

([Agnus+Dei] of  Otros

	(AnyoCreacion 1640)
	(Autor [Zurbaran])
	(Complejidad 9)
	(Dimensiones Pequenyo)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Flores FALSE)
	(Frutas FALSE)
	(Mayor18 FALSE)
	(Nombre "Agnus Dei")
	(Relevancia 7)
	(Sala 2)
	(Tematica RetratoOtros)) 

([Bodegon+con+cacharros] of  Otros

	(AnyoCreacion 1650)
	(Autor [Zurbaran])
	(Complejidad 5)
	(Dimensiones Pequenyo)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Flores FALSE)
	(Frutas FALSE)
	(Mayor18 FALSE)
	(Nombre "Bodegon con cacharros")
	(Relevancia 5)
	(Sala 3)
	(Tematica RetratoOtros))

;;---------------------------------------------------------------------
;;---------------------------------------------------------------------
;; Obras de Arte, pertenecientes a la subclase Religioso
;;---------------------------------------------------------------------
;;---------------------------------------------------------------------

([La+Inmaculada+Concepcion] of Religioso
	(AnyoCreacion 1665)
	(Autor [Antolinez])
	(Complejidad 7)
	(Cristo TRUE)
	(Dimensiones Mediano)
	(Eden FALSE)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Mayor18 FALSE)
	(Nombre "La Inmaculada Concepcion")
	(Relevancia 6)
	(Sala 2)
	(Tematica Religioso))

([La+asuncion+de+la+Magdalena] of Religioso
	(AnyoCreacion 1675)
	(Autor [Antolinez])
	(Complejidad 8)
	(Cristo TRUE)
	(Dimensiones Mediano)
	(Eden FALSE)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Mayor18 FALSE)
	(Nombre "La asuncion de la Magdalena")
	(Relevancia 10)
	(Sala 2)
	(Tematica Religioso))

([El+jardin+de+las+delicias] of Religioso
	(AnyoCreacion 1515)
	(Autor [Bosco])
	(Complejidad 10)
	(Cristo FALSE)
	(Dimensiones Grande)
	(Eden TRUE)
	(Epoca "Renacimiento")
	(Estilo "Gotico")
	(Mayor18 TRUE)
	(Nombre "El jardin de las delicias")
	(Relevancia 10)
	(Sala 2)
	(Tematica Religioso))

([Triptico+de+la+Adoracion+de+los+Magos] of Religioso
	(AnyoCreacion 1500)
	(Autor [Bosco])
	(Complejidad 6)
	(Cristo TRUE)
	(Dimensiones Grande)
	(Eden FALSE)
	(Epoca "Renacimiento")
	(Estilo "Gotico")
	(Mayor18 FALSE)
	(Nombre "Triptico de la Adoracion de los Magos")
	(Relevancia 4)
	(Sala 1)
	(Tematica Religioso))

([Mesa+de+los+Pecados+Capitales] of Religioso
	(AnyoCreacion 1510)
	(Autor [Bosco])
	(Complejidad 6)
	(Cristo FALSE)
	(Dimensiones Mediano)
	(Eden FALSE)
	(Epoca "Renacimiento")
	(Estilo "Gotico")
	(Mayor18 FALSE)
	(Nombre "Mesa de los Pecados Capitales")
	(Relevancia 5)
	(Sala 1)
	(Tematica Religioso))


([David+vencedor+de+Goliath] of  Religioso

	(AnyoCreacion 1599)
	(Autor [Caravaggio])
	(Complejidad 8)
	(Cristo FALSE)
	(Dimensiones Mediano)
	(Eden FALSE)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Mayor18 FALSE)
	(Nombre "David vencedor de Goliath")
	(Relevancia 8)
	(Sala 5)
	(Tematica Religioso))

([Adan] of  Religioso

	(AnyoCreacion 1507)
	(Autor [Durero])
	(Complejidad 8)
	(Cristo FALSE)
	(Dimensiones Mediano)
	(Eden TRUE)
	(Epoca "Renacimiento")
	(Estilo "Renacimiento")
	(Mayor18 FALSE)
	(Nombre "Adan")
	(Relevancia 8)
	(Sala 1)
	(Tematica Religioso))

([Eva] of  Religioso

	(AnyoCreacion 1507)
	(Autor [Durero])
	(Complejidad 8)
	(Cristo FALSE)
	(Dimensiones Mediano)
	(Eden TRUE)
	(Epoca "Renacimiento")
	(Estilo "Renacimiento")
	(Mayor18 FALSE)
	(Nombre "Eva")
	(Relevancia 8)
	(Sala 1)
	(Tematica Religioso))

([La+Crucifixion] of  Religioso

	(AnyoCreacion 1600)
	(Autor [Greco])
	(Complejidad 10)
	(Cristo TRUE)
	(Dimensiones Mediano)
	(Eden FALSE)
	(Epoca "Renacimiento")
	(Estilo "Manierismo")
	(Mayor18 FALSE)
	(Nombre "La Crucifixion")
	(Relevancia 10)
	(Sala 1)
	(Tematica Religioso))

([La+huida+a+Egipto] of  Religioso

	(AnyoCreacion 1570)
	(Autor [Greco])
	(Complejidad 6)
	(Cristo TRUE)
	(Dimensiones Pequenyo)
	(Eden FALSE)
	(Epoca "Renacimiento")
	(Estilo "Manierismo")
	(Mayor18 FALSE)
	(Nombre "La huida a Egipto")
	(Relevancia 5)
	(Sala 2)
	(Tematica Religioso))

([Cupido] of  Religioso

	(AnyoCreacion 1638)
	(Autor [Reni])
	(Complejidad 8)
	(Cristo FALSE)
	(Dimensiones Pequenyo)
	(Eden FALSE)
	(Epoca "Barroco")
	(Estilo "Clasicismo")
	(Mayor18 FALSE)
	(Nombre "Cupido")
	(Relevancia 7)
	(Sala 2)
	(Tematica Religioso))

([Virgen+de+la+silla] of  Religioso

	(AnyoCreacion 1625)
	(Autor [Reni])
	(Complejidad 9)
	(Cristo FALSE)
	(Dimensiones Mediano)
	(Eden FALSE)
	(Epoca "Barroco")
	(Estilo "Clasicismo")
	(Mayor18 FALSE)
	(Nombre "Virgen de la silla")
	(Relevancia 4)
	(Sala 1)
	(Tematica Religioso))

([Las+Tres+Gracias] of  Religioso

	(AnyoCreacion 1636)
	(Autor [Rubens])
	(Complejidad 8)
	(Cristo FALSE)
	(Dimensiones Mediano)
	(Eden FALSE)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Mayor18 FALSE)
	(Nombre "Las Tres Gracias")
	(Relevancia 9)
	(Sala 1)
	(Tematica Religioso))

([El+juicio+de+Paris] of  Religioso

	(AnyoCreacion 1638)
	(Autor [Rubens])
	(Complejidad 8)
	(Cristo FALSE)
	(Dimensiones Mediano)
	(Eden TRUE)
	(Epoca "Barroco")
	(Estilo "Barroco")
	(Mayor18 FALSE)
	(Nombre "El juicio de Paris")
	(Relevancia 9)
	(Sala 3)
	(Tematica Religioso))

([Ticio] of  Religioso

	(AnyoCreacion 1565)
	(Autor [Tiziano])
	(Complejidad 10)
	(Cristo FALSE)
	(Dimensiones Mediano)
	(Eden TRUE)
	(Epoca "Renacimiento")
	(Estilo "Renacimiento")
	(Mayor18 TRUE)
	(Nombre "Ticio")
	(Relevancia 10)
	(Sala 4)
	(Tematica Religioso))

([Salome] of  Religioso

	(AnyoCreacion 1550)
	(Autor [Tiziano])
	(Complejidad 8)
	(Cristo FALSE)
	(Dimensiones Mediano)
	(Eden FALSE)
	(Epoca "Renacimiento")
	(Estilo "Renacimiento")
	(Mayor18 FALSE)
	(Nombre "Salome")
	(Relevancia 9)
	(Sala 3)
	(Tematica Religioso))

;;---------------------------------------------------------------------
;;---------------------------------------------------------------------
;; Obras de Arte, pertenecientes a la subclase Belico
;;---------------------------------------------------------------------
;;---------------------------------------------------------------------

([El+3+de+Mayo+de+1808] of  Belico

	(AnyoCreacion 1814)
	(Autor [Goya])
	(Complejidad 8)
	(Dimensiones Grande)
	(Epoca "Romaticismo")
	(Estilo "Romanticismo")
	(Mayor18 FALSE)
	(Muerte FALSE)
	(Nombre "El 3 de Mayo de 1808")
	(Relevancia 7)
	(Sala 1)
	(Tematica Belico)	
	(Violento FALSE))

;;---------------------------------------------------------------------
;;---------------------------------------------------------------------
;; Pintores
;;---------------------------------------------------------------------
;;---------------------------------------------------------------------

([Bosco] of  Pintor

	(Epoca "Renacimiento")
	(Estilo "Gotico")
	(Nacionalidad "Holandesa")
	(Nombre "Bosco")
	(Obras [El+jardin+de+las+delicias][Triptico+de+la+Adoracion+de+los+Magos][Mesa+de+los+Pecados+Capitales]))

([Goya] of  Pintor

	(Epoca "Barroco")
	(Estilo "Barroco") ;;wrong, falten d'altres
	(Nacionalidad "Espanyola")
	(Nombre "Goya")
	(Obras [Caza+con+reclamo][Perros+en+trailla][Saturno+devorando+a+un+hijo][El+3+de+Mayo+de+1808]))

([Velazquez] of  Pintor

	(Epoca "Barroco")
	(Estilo "Barroco") 
	(Nacionalidad "Espanyola")
	(Nombre "Velazquez")
	(Obras [Las+Meninas][La+venerable+madre+Jeronima+de+la+Fuente][Retrato+de+hombre]))


([Rubens] of  Pintor

	(Epoca "Barroco")
	(Estilo "Barroco") 
	(Nacionalidad "Aleman")
	(Nombre "Rubens")
	(Obras [Retrato+ecuestre+del+duque+de+Lerma][Las+Tres+Gracias][El+juicio+de+Paris]))

([Lorena] of  Pintor

	(Epoca "Barroco")
	(Estilo "Clasicismo") 
	(Nacionalidad "Frances")
	(Nombre "Rubens")
	(Obras [El+embarco+de+Santa+Paula+Romana]))

([Durero] of  Pintor

	(Epoca "Renacimiento")
	(Estilo "Renacimiento") 
	(Nacionalidad "Aleman")
	(Nombre "Durero")
	(Obras [Autorretrato][Adan][Eva]))

([Greco] of  Pintor

	(Epoca "Renacimiento")
	(Estilo "Manierismo") 
	(Nacionalidad "Griego")
	(Nombre "Greco")
	(Obras [La+Crucifixion] [La+huida+a+Egipto]))


([Antolinez] of  Pintor

	(Epoca "Barroco")
	(Estilo "Barroco") 
	(Nacionalidad "Espanyola")
	(Nombre "Antolinez")
	(Obras [Retrato+de+una+niña][La+Inmaculada+Concepcion][La+asuncion+de+la+Magdalena]))


([Arellano] of  Pintor

	(Epoca "Barroco")
	(Estilo "Barroco") 
	(Nacionalidad "Espanyola")
	(Nombre "Arellano")
	(Obras [Florero+de+cristal][Bodegon+de+frutas]))


([Zurbaran] of  Pintor

	(Epoca "Barroco")
	(Estilo "Barroco") 
	(Nacionalidad "Espanyola")
	(Nombre "")
	(Obras [Agnus+Dei][Bodegon+con+cacharros]))

([Reni] of  Pintor

	(Epoca "Barroco")
	(Estilo "Clasicismo") 
	(Nacionalidad "Italiano")
	(Nombre "Reni")
	(Obras [Cupido][Cleopatra][Virge+de+la+silla]))

([Ranc] of  Pintor

	(Epoca "Barroco")
	(Estilo "Barroco") 
	(Nacionalidad "Frances")
	(Nombre "Ranc")
	(Obras [Felipe+de+Borbon+y+Farnesio,+futuro+duque+de+Parma][Carlos+III,+ninyo]))

([Tiziano] of  Pintor

	(Epoca "Renacimiento")
	(Estilo "Renacimiento") 
	(Nacionalidad "Italiano")
	(Nombre "Tiziano")
	(Obras [Ticio][Salome][Autorretrato2][Felipe+II]))


;;---------------------------------------------------------------------
;;---------------------------------------------------------------------
;; Visitantes
;;---------------------------------------------------------------------
;;---------------------------------------------------------------------

([Visitante+Cualquiera] of  Visitante

	(ConocimientoArte Medio)
	(DiasVisita 1)
	(DuracionVisita 2)
	(Preferencias "a")
	(Tipo Individuo))


)


;;---------------------------------------------------------
;;
;; Template para las RECOMENDACIONES:
;;
;;---------------------------------------------------------

(deftemplate recomendacion
     (slot ObraDeArte)
     (slot prioridad))

;;---------------------------------------------------------
;;
;; Template para las SALAS:
;;
;;---------------------------------------------------------

(deftemplate recomendacionSalas
     (slot ObraDeArte)
     (slot sala))



;;---------------------------------------------------------
;;
;; Template para guardar la tematica PREFERIDA del visitante
;;
;;---------------------------------------------------------

(deftemplate tematica "tematica preferida"
  (slot nombre))

;;---------------------------------------------------------
;;
;; Cuantos OBRAS hemos imprimido
;;
;;---------------------------------------------------------

(defglobal ?*recomendacionesImprimidas* = 0)

;;---------------------------------------------------------
;;
;; Tiempo disponible
;;
;;---------------------------------------------------------

(defglobal ?*tiempoDisponible* = 1)


;;---------------------------------------------------------
;;
;; Tiempo mirando obra
;;
;;---------------------------------------------------------

(defglobal ?*tiempoMirandoObra* = 0)


;;---------------------------------------------------------
;;
;; Funciones para PREGUNTAR cosas
;;
;;---------------------------------------------------------

;;------------------------------------------------------------------
;; Obtiene una respuesta de entre un conjunto de respuestas posibles
;;------------------------------------------------------------------
(deffunction ask-question (?question $?allowed-values)
   (format t (str-cat "%n" ?question "%n"))
   (bind ?answer (read))
   (while (not (member ?answer ?allowed-values)) do
      (format t (str-cat "%n" ?question "%n"))
      (bind ?answer (read)))
   ?answer)

;;-----------------------------------------------------
;; Hace una pregunta a la que hay que responder si o no
;;-----------------------------------------------------
(deffunction si-o-no-p (?question)
   (bind ?response (ask-question ?question si no s n))
   (if (or (eq ?response si) (eq ?response s))
     then TRUE
     else FALSE))

;;--------------------------------------------------------------------------
;; Hace una pregunta a la que hay que responder con un numero entre un rango
;;--------------------------------------------------------------------------
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
  (format t "%n%s [%d, %d]%n" ?pregunta ?rangini ?rangfi)
  (bind ?respuesta (read))
  (while (not (and (>= ?respuesta ?rangini) (<= ?respuesta ?rangfi))) do
    (format t "%n%s [%d, %d]%n" ?pregunta ?rangini ?rangfi)
    (bind ?respuesta (read)))
  ?respuesta)


;;--------------------------------------------
;; Hace una pregunta multi respuesta por comas
;;--------------------------------------------

(deffunction pregunta-multi (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles) 
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (format t "%s" "Indica los números separados por un espacio: ")
    (bind ?resp (readline))
    (bind ?numeros (str-explode ?resp))
    (bind $?lista (create$ ))
    (progn$ (?var ?numeros) 
        (if (and (integerp ?var) (and (>= ?var 1) (<= ?var (length$ ?valores-posibles))))
            then 
                (if (not (member$ ?var ?lista))
                    then (bind ?lista (insert$ ?lista (+ (length$ ?lista) 1) ?var))
                )
        ) 
    )
    ?lista
)

;;----------------------------------------------------------------
;;
;; Funciones para tocar el PRIORIDAD de todas las recomendaciones
;;
;;----------------------------------------------------------------

;;------------------------------------------------------
;; Incrementa el prioridad del hecho ?recomendacion en ?inc
;;------------------------------------------------------
(deffunction incrementa-prioridad-recomendacion (?recomendacion ?inc)
  (modify ?recomendacion (prioridad (+ (fact-slot-value ?recomendacion prioridad) ?inc))))


;;-------------------------------------------------------------
;; Incrementa el prioridad de todas las recomandaciones cuyo obra
;; tiene el slot ?slot con valor igual que ?valor
;; El incremento de prioridad será de ?inc
;;-------------------------------------------------------------
(deffunction incrementa-prioridad-obras (?slot ?valor ?inc)
  (progn$ (?f (get-fact-list)) 
    (if (eq (fact-relation ?f) recomendacion) then 
      (bind ?ObraDeArte (fact-slot-value ?f ObraDeArte))
      (if (eq (send ?ObraDeArte (sym-cat get- ?slot)) ?valor) then 
        (incrementa-prioridad-recomendacion ?f ?inc)))))


;;-------------------------------------------------------------
;; Incrementa el prioridad de todas las recomandaciones cuyo ObraDeArte
;; tiene el multislot ?slot con valor igual que ?valor
;; El incremento de prioridad será de ?inc
;;-------------------------------------------------------------
(deffunction incrementa-prioridad-obras-lista (?slot ?valor ?inc)
  (progn$ (?f (get-fact-list)) 
    (if (eq (fact-relation ?f) recomendacion) then 
      (bind ?ObraDeArte (fact-slot-value ?f ObraDeArte))
      (if (member ?valor (send ?ObraDeArte (sym-cat get- ?slot))) then 
        (incrementa-prioridad-recomendacion ?f ?inc)))))



;;---------------------------------------------------------------------------
;; Incrementa el prioridad de todas las recomandaciones cuyo obra
;; es de tematica ?tematica, y tiene el slot ?slot con valor igual que ?valor
;; El incremento de prioridad será de ?inc
;;---------------------------------------------------------------------------
(deffunction incrementa-prioridad-obras-tematica (?Tematica ?slot ?valor ?inc)
  (progn$ (?f (get-fact-list)) 
    (if (eq (fact-relation ?f) recomendacion) then 
      (bind ?ObraDeArte (fact-slot-value ?f ObraDeArte))
      (if (and
        (eq (send ?ObraDeArte get-Tematica) ?Tematica)
        (eq (send ?ObraDeArte (sym-cat get- ?slot)) ?valor)) then 
        (incrementa-prioridad-recomendacion ?f ?inc)))))



;;---------------------------------------------------------------------------------------------------------
;;
;; A partir de una base de datos de obras, queremos:
;;   Recomendar un máxímo de 3 obras al usuario -una recomendación es simplemente un par <obra, prioridad>-,
;;   basándonos en la relación entre sus preferencias y los atributos (o 'slots') de cada obra.
;;   Esa relación influye en el valor del prioridad de un recomendacion, si el obra correspondiente 
;;   satisface las preferencias del usuario.
;;
;; Naturalmente, algunas preferencias tendrán más peso que otras; por ejemplo la tematica del obra aporta 
;; más peso a la recomendación que la selección del formato (ebook, tapa-dura, tapa-blanda)
;;
;; La edad del visitante también influye, ya que los obras para adultos no se pueden recomendar a los menores
;;
;; Hemos agrupado las preferencias en diferentes módulos:
;;   1 - MAIN
;;   2 - determina-tematica
;;   3 - preguntas-edad
;;   4 - preguntas-tematica
;;   5 - preguntas-tiempo-complejidad 
;;   6 - preguntas-formato-longitud
;;   7 - preguntas-ventas-categoria
;;   8 - preguntas-autor-obra-favoritos
;;   9 - imprime-recomendaciones
;;
;; El funcionamiento de cada módulo está conentado con más detalle junto al código correspondiente
;;
;; Aqui empezamos con el modulo MAIN
;; En este módulo simplemente inicializamos las recomendaciones
;; y pasamos al siguiente módulo: elegir las tematica preferida
;;
;;---------------------------------------------------------------------------------------------------------

(defmodule MAIN (export ?ALL))

;;-----------------------------------------------------------------------------------------
;; Inicializar las recomendaciones con prioridad 0
;; Regla inicial: para cada instancia de obra, crear el hecho (recomendacion obra prioridad)
;;-----------------------------------------------------------------------------------------
(defrule init-recomendaciones
  (declare (salience 1))
  ?ObraDeArte <- (object (is-a ObraDeArte))
  =>
  (assert (recomendacion (ObraDeArte ?ObraDeArte) (prioridad 0))))


;; Pasar al modulo de seleccion de tematica
(defrule siguiente-modulo "Salta al modulo para determinar la tematica"
  (declare (salience 0))
  =>
  (printout t "-------------------------------------------------------" crlf)
  (printout t "------ Sistema Experto de Recomendación de Obras ------" crlf)
  (printout t "-------------------------------------------------------" crlf crlf)
  (assert (tematica (nombre desconocida)))    ;; poner la tematica como desconocida
  (focus determina-visitantes))                 	  ;; pasar al siguiente modulo


;;---------------------------------------------------------------------------------
;;
;; Aqui empezamos con el modulo de para determinar la tematica del usuario 
;;
;;---------------------------------------------------------------------------------

(defmodule determina-visitantes "Preguntas para determinar tematica"
  (import MAIN ?ALL)
  (export ?ALL))



;;---------------------------------------------
;; Determinar la cantidad de visitantes 
;;---------------------------------------------

(defrule pregunta-visitantes "Cantidad visitantes"
  (declare (salience 5))
  =>
  (bind ?response
    (ask-question "¿Cuantos sois?%n  1 - Vengo solo%n  2 - Somos una familia%n  3 - Somos un grupo de menos de 15 personas%n  4 - Somos un grupo de más de 15 personas"
                  1 2 3 4))
  (if (eq ?response 1) 
    then (bind ?*tiempoDisponible* (/ 1 ?*tiempoDisponible*)))
  (if (eq ?response 2) 
    then (bind ?*tiempoDisponible* (/ 1.2 ?*tiempoDisponible*)))
  (if (eq ?response 3) 
    then (bind ?*tiempoDisponible* (/ 1.5 ?*tiempoDisponible*)))
  (if (eq ?response 4) 
    then (bind ?*tiempoDisponible* (/ 1.7 ?*tiempoDisponible*))))


;; Saltar al modulo menores
;;---------------------------------
(defrule fin-determina-visitantes "Fin pregunta # visitantes"
  (declare (salience 0))
  =>
  (focus determina-contenido))

;;------------------------------------
;;
;; Preguntas para saber si hay menores
;;
;;------------------------------------

;; Definicion del modulo
;;----------------------
(defmodule determina-contenido "Preguntas para determinar si es un grupo"
  (import determina-visitantes ?ALL)
  (export ?ALL))

;;---------------------------------------------
;; Determinar si hay menores
;;---------------------------------------------

(defrule pregunta-menor "Preguntas para determinar si hay algun menor"
  (declare (salience 10))
  =>
  (if (si-o-no-p "¿Hay algun niño? (s/n)")
    then (assert (menor si))
    else (assert (menor no))))

;; Saltar al modulo diasVisita
;;--------------------------------------------------
(defrule fin-pregunta-menor "Fin preguntas menor"
  (declare (salience 0))
  =>
  (focus determina-diasVisita))

;;-------------------------------------------------------
;;
;; Preguntas para saber cuantos dias visitaran el museo
;;
;;-------------------------------------------------------

;; Definicion del modulo
;;----------------------
(defmodule determina-diasVisita "Preguntas para determinar los dias que visitaran"
  (import determina-contenido ?ALL)
  (export ?ALL))

(defrule pregunta-diasVisita "Pregunta cuantos dias visitaran"
  (declare (salience 10))
  =>
  (bind ?diasVisita (pregunta-numerica "¿Cuantos dias visitaras el museo?" 1 2))
  (bind ?*tiempoDisponible* (* ?diasVisita ?*tiempoDisponible*)))
  
;; Saltar al modulo tipo contenido
;;---------------------------------
(defrule fin-determina-diasVisita "Fin pregunta # dias visita"
  (declare (salience 0))
  =>
  (focus determina-duracionVisita))

;;-------------------------------------------------------
;;
;; Preguntas para saber la duracion de la visita
;;
;;-------------------------------------------------------

;; Definicion del modulo
;;----------------------
(defmodule determina-duracionVisita "Preguntas para determinar la duracion de la visita"
  (import determina-diasVisita ?ALL)
  (export ?ALL))

(defrule pregunta-duracionVisita "Preguntas para determinar la duracion de la visita"
  (declare (salience 10))
  =>
  (bind ?response
    (ask-question "¿Duracion visita?%n  1 - Mañana/Tarde%n  2 - Todo el día"
                  1 2))
  (if (eq ?response 1) 
    then (bind ?*tiempoDisponible* (* 120 ?*tiempoDisponible*)))
  (if (eq ?response 2) 
    then (bind ?*tiempoDisponible* (* 240 ?*tiempoDisponible*))))
  
;; Saltar al modulo tipo contenido
;;---------------------------------
(defrule fin-determina-duracionVisita "Fin pregunta duracion visita"
  (declare (salience 0))
  =>
  (focus determina-artistasFavoritos))

;;-------------------------------------------------------
;;
;; Preguntas para saber los artistas favoritos
;;
;;-------------------------------------------------------

;; Definicion del modulo
;;----------------------
(defmodule determina-artistasFavoritos "Preguntas para determinar artistas le gustaria ver"
  (import determina-duracionVisita ?ALL)
  (export ?ALL))


; Velázquez
; Greco 
; Durero 
; Ninguno en especial

(defrule pregunta-artistasFavoritos "Preguntas para determinar artistas le gustaria ver"
  (declare (salience 10))
  =>
  (bind ?response
    (ask-question "¿Cuales de estos artistas te gustaria ver?%n  1 - Velázquez%n  2 - Greco%n  3 - Durero%n  4 - Ninguno en especial"
                  1 2 3 4))
  (if (eq ?response 1) 
    then (incrementa-prioridad-obras Autor [Velazquez] 100))
  (if (eq ?response 2) 
    then (incrementa-prioridad-obras Autor [Greco] 100))
  (if (eq ?response 3) 
    then (incrementa-prioridad-obras Autor [Durero] 100))
  (if (eq ?response 4) 
    then (assert (TipoObra Retrato))
    	 (incrementa-prioridad-obras Mayor18 TRUE 100)
    	 (incrementa-prioridad-obras Mayor18 FALSE 100)))
  
;; Saltar al modulo tipo contenido
;;---------------------------------
(defrule fin-determina-artistasFavoritos "Fin pregunta duracion visita"
  (declare (salience 0))
  =>
  (focus determina-periodoHistorico))

;;-------------------------------------------------------
;;
;; Preguntas para saber las preferencias de periodos historicos 
;;
;;-------------------------------------------------------

;; Definicion del modulo
;;----------------------
(defmodule determina-periodoHistorico "Preguntas para saber las preferencias de periodos historicos "
  (import determina-artistasFavoritos ?ALL)
  (export ?ALL))


(defrule pregunta-periodoHistorico "Preguntas para saber las preferencias de periodos historicos "
  (declare (salience 10))
  =>
  (bind ?response
    (ask-question "¿Sobre qué períodos históricos estás más interesado en ver obras?%n  1 - Renacimiento%n  2 - Romanticismo%n  3 - Barroco%n  4 - Ninguno en especial"
                  1 2 3 4))
  (if (eq ?response 1) 
    then (incrementa-prioridad-obras Epoca "Renacimiento" 100))
  (if (eq ?response 2) 
    then (incrementa-prioridad-obras Epoca "Romanticismo" 100))
  (if (eq ?response 3) 
    then (incrementa-prioridad-obras Epoca "Barroco" 100))
  (if (eq ?response 4) 
    then (assert (TipoObra Retrato))
    	 (incrementa-prioridad-obras Mayor18 TRUE 100)
    	 (incrementa-prioridad-obras Mayor18 FALSE 100)))
  
;; Saltar al modulo tipo contenido
;;---------------------------------
(defrule fin-determina-periodoHistorico "Fin pregunta duracion visita"
  (declare (salience 0))
  =>
  (focus determina-estilo))


;;-------------------------------------------------------
;;
;; Preguntas para saber las preferencias de estilo
;;
;;-------------------------------------------------------

;; Definicion del modulo
;;----------------------
(defmodule determina-estilo "Preguntas para saber las preferencias de estilo "
  (import determina-periodoHistorico ?ALL)
  (export ?ALL))

(defrule pregunta-estilo "Preguntas para saber las preferencias de estilo "
  (declare (salience 10))
  =>
  (bind ?response
    (ask-question "¿Hay algún estilo que te llame la atención?%n  1 - Renacimiento%n  2 - Prerromanticismo%n  3 - Clasicismo%n  4 - Gótico%n  5 - Manierismo%n  6 - Rococó%n  7 - Barroco%n  8 - Ninguno en especial"
                  1 2 3 4 5 6 7 8))
  (if (or (or (eq ?response 1) (eq ?response 2)) (eq ?response 3)) 
    then (incrementa-prioridad-obras Complejidad 1 100)
    (incrementa-prioridad-obras Complejidad 2 100)	
    (incrementa-prioridad-obras Complejidad 3 100)
    (incrementa-prioridad-obras Complejidad 4 100)
    (incrementa-prioridad-obras Complejidad 5 100))
  (if (or (eq ?response 6) (eq ?response 7)) 
    then (incrementa-prioridad-obras Complejidad 6 100)
    (incrementa-prioridad-obras Complejidad 7 100)	
    (incrementa-prioridad-obras Complejidad 8 100)
    (incrementa-prioridad-obras Complejidad 9 100)
    (incrementa-prioridad-obras Complejidad 10 100))
  (if (eq ?response 8) 
    then (assert (TipoObra Retrato))
    	 (incrementa-prioridad-obras Mayor18 TRUE 100)
    	 (incrementa-prioridad-obras Mayor18 FALSE 100)))
  
;; Saltar al modulo tipo contenido
;;---------------------------------
(defrule fin-determina-estilo "Fin pregunta duracion visita"
  (declare (salience 0))
  =>
  (focus determina-frecuenciaVisita))

;;-------------------------------------------------------
;;
;; Preguntas para saber las frecuencia en la que visita el museo
;;
;;-------------------------------------------------------

;; Definicion del modulo
;;----------------------
(defmodule determina-frecuenciaVisita "Preguntas para saber las frecuencia en la que visita el museo"
  (import determina-estilo ?ALL)
  (export ?ALL))

(defrule pregunta-frecuenciaVisita "Preguntas para saber las frecuencia en la que visita el museo"
  (declare (salience 10))
  =>
  (bind ?response
    (ask-question "¿Visitas normalmente museos o galerías?%n  1 - Muy pocas veces%n  2 - A veces%n  3 - Frecuentemente%n  4 - Muy frecuentemente"
                  1 2 3 4))
  (assert (ConocimientoDeArte ?response)))
	
;; Saltar al modulo tipo contenido
;;---------------------------------
(defrule fin-determina-frecuenciaVisita "Fin pregunta duracion visita"
  (declare (salience 0))
  =>
  (focus determina-tematica))
;  (focus determina-periodoHistorico))

;;-----------------------------------------------------------------------------------------------------------------------
;;
;; Aqui empezamos con el modulo de para determinar la tematica de la obra 
;;
;;-----------------------------------------------------------------------------------------------------------------------

(defmodule determina-tematica "Preguntas para determinar tematica"
  (import determina-frecuenciaVisita ?ALL)
  (export ?ALL))


;; Determinar la temática preferida del usuario
;;---------------------------------------------
(defrule pregunta-tematica "¿Que tipo de obras prefieres ver?"
  (declare (salience 1))
  =>
  (bind ?response
    (ask-question "¿Que tipo de obras prefieres ver?%n  1 - Retrato%n  2 - Belico%n  3 - Religioso%n  4 - Ninguno en especial"
                  1 2 3 4))
  (if (eq ?response 1) 
    then 
    	 (incrementa-prioridad-obras Tematica RetratoOtros 100)
    	 (incrementa-prioridad-obras Tematica RetratoPersonas 100)
    	 (focus determina-tipoRetrato))
  (if (eq ?response 2) 
	then 
    	 (incrementa-prioridad-obras Tematica Belico 100)
    	 (focus determina-tipoBelico))
  (if (eq ?response 3) 
  	then 
    	 (incrementa-prioridad-obras Tematica Religioso 100)
    	 (focus determina-tipoReligioso))
  (if (eq ?response 4) 
    then 
    	 (incrementa-prioridad-obras Mayor18 TRUE 100)
    	 (incrementa-prioridad-obras Mayor18 FALSE 100)
    	 (focus imprime-recomendaciones)))



;;-----------------------------------------------------------------------------------------------------------------------
;;
;; Preguntas Retrato
;;
;;-----------------------------------------------------------------------------------------------------------------------

(defmodule determina-tipoRetrato "Preguntas para determinar el tipo de retrato"
  (import determina-tematica ?ALL)
  (export ?ALL))

(defrule pregunta-tipoRetrato "¿Que tipo de retratos prefieres ver?"
  (declare (salience 10))
  =>
  (bind ?response
    (ask-question "¿Que tipo de retratos prefieres ver?%n  1 - Personas%n  2 - Otros"
                  1 2))
  (if (eq ?response 1) 
    then (assert (TipoObra RetratoPersonas))
    	 (incrementa-prioridad-obras Tematica RetratoPersonas 100))
  (if (eq ?response 2) 
	then (assert (TipoObra RetratoOtros)))
  		 (incrementa-prioridad-obras Tematica RetratoOtros 100))

;; Tipo de Retrato
;;----------------------
(defrule fin-determina-tipoRetrato "Fin pregunta eleccion tematica"
  (declare (salience 0))
  (TipoObra ?Tipo)
  =>
  (if (eq ?Tipo RetratoPersonas)
  	then (focus determina-retratoPersonas))
  (if (eq ?Tipo RetratoOtros)
  	then (focus determina-retratoOtros)))

;;---------------------------
;;
;; Preguntas Retrato Personas
;;
;;---------------------------

(defmodule determina-retratoOtros "Preguntas para determinar retratoOtros"
  (import determina-tipoRetrato ?ALL)
  (export ?ALL))


(defrule pregunta-retrato-flores "Determina si le gustan los cuadros con/de flores"
  (declare (salience 10))
  =>
  (if (si-o-no-p "¿Te gustan los cuadros de/con flores? (s/n)")
    then (incrementa-prioridad-obras-tematica RetratoOtros Flores TRUE 100)))

(defrule pregunta-retrato-frutas "Determina si le gustan los cuadros de/con frutas"
  (declare (salience 10))
  =>
  (if (si-o-no-p "¿Te gustan los cuadros de/con frutas? (s/n)")
    then (incrementa-prioridad-obras-tematica RetratoOtros Frutas TRUE 100)))

(defrule fin-determina-retratoOtros "Fin pregunta determinar retratoOtros"
  (declare (salience 0))
  =>
  (focus imprime-recomendaciones-tipoRetrato-otros))

;;------------------------
;;
;; Preguntas Retrato Otros
;;
;;------------------------

(defmodule determina-retratoPersonas "Preguntas para determinar retratoPersonas"
  (import determina-tipoRetrato ?ALL)
  (export ?ALL))

(defrule pregunta-retrato-famosos "Determina si le gustan los cuadros de personajes famosos"
  (declare (salience 10))
  =>
  (if (si-o-no-p "¿Te gustan los cuadros donde aparece gente famosa? (s/n)")
    then (incrementa-prioridad-obras-tematica RetratoPersonas Famoso TRUE 100)))

(defrule pregunta-retrato-autorretratos "Determina si le gustan los cuadros con autorretratos"
  (declare (salience 10))
  =>
  (bind ?response (if (si-o-no-p "¿Te gustan los cuadros con autoretratos? (s/n)")
    then (incrementa-prioridad-obras-tematica RetratoPersonas Autorretrato TRUE 100))))

(defrule fin-determina-retratoPersonas "Fin pregunta determinar retratoPersonas"
  (declare (salience 0))
  =>
  (focus imprime-recomendaciones-tipoRetrato-personas))

;-----------------------------------------------------------------------------------------------------------------------
;;
;; Preguntas Belico
;;
;;-----------------------------------------------------------------------------------------------------------------------

(defmodule determina-tipoBelico "Preguntas para determinar el tipo de retrato"
  (import determina-tematica ?ALL)
  (export ?ALL))

(defrule pregunta-belico-violencia "Determina ver cuadros donde aparece violencia"
  (declare (salience 10))
  =>
  (if (si-o-no-p "¿Te importaria ver cuadros donde aparece violencia? (s/n)")
    then (incrementa-prioridad-obras-tematica Belico Violento TRUE 100)))

(defrule pregunta-belico-muerte "Determina si le importaria ver los cuadros donde aparecen muertes"
  (declare (salience 10))
  =>
  (bind ?response (if (si-o-no-p "¿Te importaria ver cuadros donde aparecen muertes? (s/n)")
    then (incrementa-prioridad-obras-tematica Belico Muerte TRUE 100))))

(defrule fin-determina-tipoBelico "Fin pregunta determinar tipoBelico"
  (declare (salience 0))
  =>
  (focus imprime-recomendaciones-belico))



;-----------------------------------------------------------------------------------------------------------------------
;;
;; Preguntas Religioso
;;
;;-----------------------------------------------------------------------------------------------------------------------

(defmodule determina-tipoReligioso "Preguntas para determinar el tipo de retrato"
  (import determina-tematica ?ALL)
  (export ?ALL))

;; Determina si le gustan los cuadros con cristo
;;-------------------------------------------------
(defrule pregunta-religioso-cristo "Determina si le gustan los cuadros con cristo"
  (declare (salience 10))
  =>
  (if (si-o-no-p "¿Quieres ver cuadros donde aparezca Cristo? (s/n)")
    then (incrementa-prioridad-obras-tematica Religioso Cristo TRUE 100)))

;; Determina si le gustan los cuadros del Eden
;;-------------------------------------------------
(defrule pregunta-tipoObra "Determina si le gustan los cuadros del Eden"
  (declare (salience 10))
  =>
  (bind ?response (if (si-o-no-p "¿Quieres ver cuadros del Eden? (s/n)")
    then (incrementa-prioridad-obras-tematica Religioso Eden TRUE 100))))

(defrule fin-determina-tipoReligioso "Fin pregunta determinar tipoReligioso"
  (declare (salience 0))
  =>
  (focus imprime-recomendaciones-religioso))









; MIRAR DE NO REPETIR CODI PERQUE ES UNA LOCURA
; TOT I QUE L'UNIC QUE CANVIA ES EL DEFMODULE LA RESTA ES MANTE IGUAL
; PERO NOSE COM ADAPTAR-HO JA HO MIRARÉ DE MOMENT QUE FUNCIONI





;;---------------------------------------------------------------------------------
;;
;; Modulo imprimir recomendaciones por rama
;;
;;---------------------------------------------------------------------------------

;-------------------------------
;;
;; Sin tipo
;;
;;------------------------------

(defmodule imprime-recomendaciones "Obras a visitar"
  (import determina-tematica ?ALL)
  (export ?ALL))

;; arranca estableciendo el hecho print-sorted
;;--------------------------------------------
 (defrule print
   (declare (salience 10))
   =>
   (printout t crlf "Obras recomendadas" crlf "-------------------" crlf)
   (assert (print-sorted)))


 ;;---------------------------------------------------------

 (defrule assert-unprinted "Asserts each item that needs to be printed."
   (declare (salience 10))
   (print-sorted)
   (tematica (nombre ?n))
   (menor ?esMenor)
   (recomendacion (ObraDeArte ?obra))
   =>
   (if (or (or (eq ?esMenor no) 
          (eq (send ?obra get-Mayor18) FALSE))  (eq (send ?obra get-Mayor18) FALSE))
    then (assert (unprinted ?obra))))



 ;; elimina el hecho print-sorted para iniciar la salida
 ;;-----------------------------------------------------
 (defrule retract-print-sorted "Retract print-sorted after all items enumerated."
   (declare (salience 0))
   ?f <- (print-sorted)
   =>
   (retract ?f))


 ;;-----------------------------------------
 (defrule print-greatest "Prints the unprinted item with the greatest rating."
   (declare (salience 0))
   (not (print-sorted))
   ?u <- (unprinted ?obra)
   (ConocimientoDeArte ?conocimientoDeArte)	
   (recomendacion (ObraDeArte ?obra) (prioridad ?prioridad))                                               
   (forall (and (unprinted ?l) (recomendacion (ObraDeArte ?l) (prioridad ?r))) (test (<= ?r ?prioridad)))  
   =>
   (retract ?u)                                                                                  
   ;tiempoMirandoObra = (Complejidad + Coneixement)/2 + tiempoTamanyoObra
   (if (<= ?*tiempoMirandoObra* ?*tiempoDisponible*) 
   		then 
   		(if (eq (send ?obra get-Dimensiones)  Pequenyo)
	   		then (bind ?*tiempoMirandoObra* (+ (+ (/ (+ (send ?obra get-Complejidad) ?conocimientoDeArte) 2) 10) ?*tiempoMirandoObra*)))
	    (if (eq (send ?obra get-Dimensiones)  Mediano)
	   		then (bind ?*tiempoMirandoObra* (+ (+ (/ (+ (send ?obra get-Complejidad) ?conocimientoDeArte) 2) 13) ?*tiempoMirandoObra*)))
	    (if (eq (send ?obra get-Dimensiones)  Grande)
			then (bind ?*tiempoMirandoObra* (+ (+ (/ (+ (send ?obra get-Complejidad) ?conocimientoDeArte) 2) 15) ?*tiempoMirandoObra*)))
	    
	    ; (printout t "Tiempo mirando obra: " ?*tiempoMirandoObra* crlf)
	    ; (printout t "Tiempo disponible: " ?*tiempoDisponible* crlf)
	    (assert (recomendacion (ObraDeArte ?obra) (prioridad  ?prioridad)))
	    ; (printout t "#" (+ 1 ?*recomendacionesImprimidas*) " - " (send ?obra get-Nombre) ", de " (send ?obra get-Autor) ", con sala: " (send ?obra get-Sala) " , con prioridad: " ?prioridad  crlf)
	    ; (bind ?*recomendacionesImprimidas* (+ 1 ?*recomendacionesImprimidas*))
	    ))

 ;;-----------------------------------------
 (defrule print-sala "Prints the unprinted item with the greatest rating."
   (declare (salience 0))
   ?u <- (unprinted ?obra)
   (ConocimientoDeArte ?conocimientoDeArte)	
   (recomendacion (ObraDeArte ?obra) (prioridad ?prioridad))                                               
   (forall (and (unprinted ?l) (recomendacion (ObraDeArte ?l) (prioridad ?r))) (test (>= (send ?l get-Sala) (send ?obra get-Sala))))                                            
   =>
   (retract ?u)                                                                                  
   ;tiempoMirandoObra = (Complejidad + Coneixement)/2 + tiempoTamanyoObra

    ; (printout t "Tiempo mirando obra: " ?*tiempoMirandoObra* crlf)
    ; (printout t "Tiempo disponible: " ?*tiempoDisponible* crlf)
    (printout t "#" (+ 1 ?*recomendacionesImprimidas*) " - " (send ?obra get-Nombre) ", de " (send ?obra get-Autor) "con prioridad: " ?prioridad ", con sala: " (send ?obra get-Sala)  crlf)
    (bind ?*recomendacionesImprimidas* (+ 1 ?*recomendacionesImprimidas*)))


;-------------------------------
;;
;; Tipo Retrato Otros
;;
;;------------------------------

(defmodule imprime-recomendaciones-tipoRetrato-otros "Obras a visitar"
  (import determina-retratoOtros ?ALL)
  (export ?ALL))

;; arranca estableciendo el hecho print-sorted
;;--------------------------------------------
 (defrule print
   (declare (salience 10))
   =>
   (printout t crlf "Obras recomendadas" crlf "-------------------" crlf)
   (assert (print-sorted)))


 ;;---------------------------------------------------------

 (defrule assert-unprinted "Asserts each item that needs to be printed."
   (declare (salience 10))
   (print-sorted)
   (tematica (nombre ?n))
   (menor ?esMenor)
   (recomendacion (ObraDeArte ?obra))
   =>
   (if (or (or (eq ?esMenor no) 
          (eq (send ?obra get-Mayor18) FALSE))  (eq (send ?obra get-Mayor18) FALSE))
    then (assert (unprinted ?obra))))



 ;; elimina el hecho print-sorted para iniciar la salida
 ;;-----------------------------------------------------
 (defrule retract-print-sorted "Retract print-sorted after all items enumerated."
   (declare (salience 0))
   ?f <- (print-sorted)
   =>
   (retract ?f))


 ;;-----------------------------------------
 (defrule print-greatest "Prints the unprinted item with the greatest rating."
   (declare (salience 0))
   (not (print-sorted))
   ?u <- (unprinted ?obra)
   (ConocimientoDeArte ?conocimientoDeArte)	
   (recomendacion (ObraDeArte ?obra) (prioridad ?prioridad))                                               
   (forall (and (unprinted ?l) (recomendacion (ObraDeArte ?l) (prioridad ?r))) (test (<= ?r ?prioridad)))  
   =>
   (retract ?u)                                                                                  
   ;tiempoMirandoObra = (Complejidad + Coneixement)/2 + tiempoTamanyoObra
   (if (<= ?*tiempoMirandoObra* ?*tiempoDisponible*) 
   		then 
   		(if (eq (send ?obra get-Dimensiones)  Pequenyo)
	   		then (bind ?*tiempoMirandoObra* (+ (+ (/ (+ (send ?obra get-Complejidad) ?conocimientoDeArte) 2) 10) ?*tiempoMirandoObra*)))
	    (if (eq (send ?obra get-Dimensiones)  Mediano)
	   		then (bind ?*tiempoMirandoObra* (+ (+ (/ (+ (send ?obra get-Complejidad) ?conocimientoDeArte) 2) 13) ?*tiempoMirandoObra*)))
	    (if (eq (send ?obra get-Dimensiones)  Grande)
			then (bind ?*tiempoMirandoObra* (+ (+ (/ (+ (send ?obra get-Complejidad) ?conocimientoDeArte) 2) 15) ?*tiempoMirandoObra*)))
	    
	    ; (printout t "Tiempo mirando obra: " ?*tiempoMirandoObra* crlf)
	    ; (printout t "Tiempo disponible: " ?*tiempoDisponible* crlf)
	    (assert (recomendacion (ObraDeArte ?obra) (prioridad  ?prioridad)))
	    ; (printout t "#" (+ 1 ?*recomendacionesImprimidas*) " - " (send ?obra get-Nombre) ", de " (send ?obra get-Autor) ", con sala: " (send ?obra get-Sala) " , con prioridad: " ?prioridad  crlf)
	    ; (bind ?*recomendacionesImprimidas* (+ 1 ?*recomendacionesImprimidas*))
	    ))

 ;;-----------------------------------------
 (defrule print-sala "Prints the unprinted item with the greatest rating."
   (declare (salience 0))
   ?u <- (unprinted ?obra)
   (ConocimientoDeArte ?conocimientoDeArte)	
   (recomendacion (ObraDeArte ?obra) (prioridad ?prioridad))                                               
   (forall (and (unprinted ?l) (recomendacion (ObraDeArte ?l) (prioridad ?r))) (test (>= (send ?l get-Sala) (send ?obra get-Sala))))                                            
   =>
   (retract ?u)                                                                                  
   ;tiempoMirandoObra = (Complejidad + Coneixement)/2 + tiempoTamanyoObra

    ; (printout t "Tiempo mirando obra: " ?*tiempoMirandoObra* crlf)
    ; (printout t "Tiempo disponible: " ?*tiempoDisponible* crlf)
    (printout t "#" (+ 1 ?*recomendacionesImprimidas*) " - " (send ?obra get-Nombre) ", de " (send ?obra get-Autor) "con prioridad: " ?prioridad ", con sala: " (send ?obra get-Sala)  crlf)
    (bind ?*recomendacionesImprimidas* (+ 1 ?*recomendacionesImprimidas*)))

;-------------------------------
;;
;; Tipo Belico
;;
;;------------------------------

(defmodule imprime-recomendaciones-belico "Obras a visitar"
  (import determina-tipoBelico ?ALL)
  (export ?ALL))

;; arranca estableciendo el hecho print-sorted
;;--------------------------------------------
 (defrule print
   (declare (salience 10))
   =>
   (printout t crlf "Obras recomendadas" crlf "-------------------" crlf)
   (assert (print-sorted)))


 ;;---------------------------------------------------------

 (defrule assert-unprinted "Asserts each item that needs to be printed."
   (declare (salience 10))
   (print-sorted)
   (tematica (nombre ?n))
   (menor ?esMenor)
   (recomendacion (ObraDeArte ?obra))
   =>
   (if (or (or (eq ?esMenor no) 
          (eq (send ?obra get-Mayor18) FALSE))  (eq (send ?obra get-Mayor18) FALSE))
    then (assert (unprinted ?obra))))



 ;; elimina el hecho print-sorted para iniciar la salida
 ;;-----------------------------------------------------
 (defrule retract-print-sorted "Retract print-sorted after all items enumerated."
   (declare (salience 0))
   ?f <- (print-sorted)
   =>
   (retract ?f))


 ;;-----------------------------------------
 (defrule print-greatest "Prints the unprinted item with the greatest rating."
   (declare (salience 0))
   (not (print-sorted))
   ?u <- (unprinted ?obra)
   (ConocimientoDeArte ?conocimientoDeArte)	
   (recomendacion (ObraDeArte ?obra) (prioridad ?prioridad))                                               
   (forall (and (unprinted ?l) (recomendacion (ObraDeArte ?l) (prioridad ?r))) (test (<= ?r ?prioridad)))  
   =>
   (retract ?u)                                                                                  
   ;tiempoMirandoObra = (Complejidad + Coneixement)/2 + tiempoTamanyoObra
   (if (<= ?*tiempoMirandoObra* ?*tiempoDisponible*) 
   		then 
   		(if (eq (send ?obra get-Dimensiones)  Pequenyo)
	   		then (bind ?*tiempoMirandoObra* (+ (+ (/ (+ (send ?obra get-Complejidad) ?conocimientoDeArte) 2) 10) ?*tiempoMirandoObra*)))
	    (if (eq (send ?obra get-Dimensiones)  Mediano)
	   		then (bind ?*tiempoMirandoObra* (+ (+ (/ (+ (send ?obra get-Complejidad) ?conocimientoDeArte) 2) 13) ?*tiempoMirandoObra*)))
	    (if (eq (send ?obra get-Dimensiones)  Grande)
			then (bind ?*tiempoMirandoObra* (+ (+ (/ (+ (send ?obra get-Complejidad) ?conocimientoDeArte) 2) 15) ?*tiempoMirandoObra*)))
	    
	    ; (printout t "Tiempo mirando obra: " ?*tiempoMirandoObra* crlf)
	    ; (printout t "Tiempo disponible: " ?*tiempoDisponible* crlf)
	    (assert (recomendacion (ObraDeArte ?obra) (prioridad  ?prioridad)))
	    ; (printout t "#" (+ 1 ?*recomendacionesImprimidas*) " - " (send ?obra get-Nombre) ", de " (send ?obra get-Autor) ", con sala: " (send ?obra get-Sala) " , con prioridad: " ?prioridad  crlf)
	    ; (bind ?*recomendacionesImprimidas* (+ 1 ?*recomendacionesImprimidas*))
	    ))

 ;;-----------------------------------------
 (defrule print-sala "Prints the unprinted item with the greatest rating."
   (declare (salience 0))
   ?u <- (unprinted ?obra)
   (ConocimientoDeArte ?conocimientoDeArte)	
   (recomendacion (ObraDeArte ?obra) (prioridad ?prioridad))                                               
   (forall (and (unprinted ?l) (recomendacion (ObraDeArte ?l) (prioridad ?r))) (test (>= (send ?l get-Sala) (send ?obra get-Sala))))                                            
   =>
   (retract ?u)                                                                                  
   ;tiempoMirandoObra = (Complejidad + Coneixement)/2 + tiempoTamanyoObra

    ; (printout t "Tiempo mirando obra: " ?*tiempoMirandoObra* crlf)
    ; (printout t "Tiempo disponible: " ?*tiempoDisponible* crlf)
    (printout t "#" (+ 1 ?*recomendacionesImprimidas*) " - " (send ?obra get-Nombre) ", de " (send ?obra get-Autor) "con prioridad: " ?prioridad ", con sala: " (send ?obra get-Sala)  crlf)
    (bind ?*recomendacionesImprimidas* (+ 1 ?*recomendacionesImprimidas*)))


;-------------------------------
;;
;; Tipo Religioso
;;
;;------------------------------

(defmodule imprime-recomendaciones-religioso "Obras a visitar"
  (import determina-tipoReligioso ?ALL)
  (export ?ALL))

;; arranca estableciendo el hecho print-sorted
;;--------------------------------------------
 (defrule print
   (declare (salience 10))
   =>
   (printout t crlf "Obras recomendadas" crlf "-------------------" crlf)
   (assert (print-sorted)))


 ;;---------------------------------------------------------

 (defrule assert-unprinted "Asserts each item that needs to be printed."
   (declare (salience 10))
   (print-sorted)
   (tematica (nombre ?n))
   (menor ?esMenor)
   (recomendacion (ObraDeArte ?obra))
   =>
   (if (or (or (eq ?esMenor no) 
          (eq (send ?obra get-Mayor18) FALSE))  (eq (send ?obra get-Mayor18) FALSE))
    then (assert (unprinted ?obra))))



 ;; elimina el hecho print-sorted para iniciar la salida
 ;;-----------------------------------------------------
 (defrule retract-print-sorted "Retract print-sorted after all items enumerated."
   (declare (salience 0))
   ?f <- (print-sorted)
   =>
   (retract ?f))


 ;;-----------------------------------------
 (defrule print-greatest "Prints the unprinted item with the greatest rating."
   (declare (salience 0))
   (not (print-sorted))
   ?u <- (unprinted ?obra)
   (ConocimientoDeArte ?conocimientoDeArte)	
   (recomendacion (ObraDeArte ?obra) (prioridad ?prioridad))                                               
   (forall (and (unprinted ?l) (recomendacion (ObraDeArte ?l) (prioridad ?r))) (test (<= ?r ?prioridad)))  
   =>
   (retract ?u)                                                                                  
   ;tiempoMirandoObra = (Complejidad + Coneixement)/2 + tiempoTamanyoObra
   (if (<= ?*tiempoMirandoObra* ?*tiempoDisponible*) 
   		then 
   		(if (eq (send ?obra get-Dimensiones)  Pequenyo)
	   		then (bind ?*tiempoMirandoObra* (+ (+ (/ (+ (send ?obra get-Complejidad) ?conocimientoDeArte) 2) 10) ?*tiempoMirandoObra*)))
	    (if (eq (send ?obra get-Dimensiones)  Mediano)
	   		then (bind ?*tiempoMirandoObra* (+ (+ (/ (+ (send ?obra get-Complejidad) ?conocimientoDeArte) 2) 13) ?*tiempoMirandoObra*)))
	    (if (eq (send ?obra get-Dimensiones)  Grande)
			then (bind ?*tiempoMirandoObra* (+ (+ (/ (+ (send ?obra get-Complejidad) ?conocimientoDeArte) 2) 15) ?*tiempoMirandoObra*)))
	    
	    (assert (recomendacion (ObraDeArte ?obra) (prioridad  ?prioridad)))
	    ))

 ;;-----------------------------------------
 (defrule print-sala "Prints the unprinted item with the greatest rating."
   (declare (salience 0))
   ?u <- (unprinted ?obra)
   (ConocimientoDeArte ?conocimientoDeArte)	
   (recomendacion (ObraDeArte ?obra) (prioridad ?prioridad))                                               
   (forall (and (unprinted ?l) (recomendacion (ObraDeArte ?l) (prioridad ?r))) (test (>= (send ?l get-Sala) (send ?obra get-Sala))))                                            
   =>
   (retract ?u)                                                                                  

   (printout t "#" (+ 1 ?*recomendacionesImprimidas*) " - " (send ?obra get-Nombre) ", de " (send ?obra get-Autor) "con prioridad: " ?prioridad ", con sala: " (send ?obra get-Sala)  crlf)
   (bind ?*recomendacionesImprimidas* (+ 1 ?*recomendacionesImprimidas*)))

 