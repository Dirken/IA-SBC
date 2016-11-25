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


;;---------------------------------------------------------
;;
;; Template para las RECOMENDACIONES:
;;
;;---------------------------------------------------------

(deftemplate recomendacion
     (slot obra)
     (slot prioridad))



;;---------------------------------------------------------
;;
;; Template para guardar la EPOCA PREFERIDA del visitante
;;
;;---------------------------------------------------------

(deftemplate epoca "epoca preferida"
  (slot nombre))

;;---------------------------------------------------------
;;
;; Cuantos OBRAS hemos imprimido
;;
;;---------------------------------------------------------

(defglobal ?*recomendacionesImprimidas* = 0)


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
      (bind ?obra (fact-slot-value ?f obra))
      (if (eq (send ?obra (sym-cat get- ?slot)) ?valor) then 
        (incrementa-prioridad-recomendacion ?f ?inc)))))


;;-------------------------------------------------------------
;; Incrementa el prioridad de todas las recomandaciones cuyo obra
;; tiene el multislot ?slot con valor igual que ?valor
;; El incremento de prioridad será de ?inc
;;-------------------------------------------------------------
(deffunction incrementa-prioridad-obras-lista (?slot ?valor ?inc)
  (progn$ (?f (get-fact-list)) 
    (if (eq (fact-relation ?f) recomendacion) then 
      (bind ?obra (fact-slot-value ?f obra))
      (if (member ?valor (send ?obra (sym-cat get- ?slot))) then 
        (incrementa-prioridad-recomendacion ?f ?inc)))))



;;---------------------------------------------------------------------------
;; Incrementa el prioridad de todas las recomandaciones cuyo obra
;; es de epoca ?epoca, y tiene el slot ?slot con valor igual que ?valor
;; El incremento de prioridad será de ?inc
;;---------------------------------------------------------------------------
(deffunction incrementa-prioridad-obras-epoca (?epoca ?slot ?valor ?inc)
  (progn$ (?f (get-fact-list)) 
    (if (eq (fact-relation ?f) recomendacion) then 
      (bind ?obra (fact-slot-value ?f obra))
      (if (and
        (eq (send ?obra get-epoca) ?epoca)
        (eq (send ?obra (sym-cat get- ?slot)) ?valor)) then 
        (incrementa-prioridad-recomendacion ?f ?inc)))))



;;---------------------------------------------------------------------------------------------------------
;;
;; A partir de una base de datos de obras, queremos:
;;   Recomendar un máxímo de 3 obras al usuario -una recomendación es simplemente un par <obra, prioridad>-,
;;   basándonos en la relación entre sus preferencias y los atributos (o 'slots') de cada obra.
;;   Esa relación influye en el valor del prioridad de un recomendacion, si el obra correspondiente 
;;   satisface las preferencias del usuario.
;;
;; Naturalmente, algunas preferencias tendrán más peso que otras; por ejemplo la epoca del obra aporta 
;; más peso a la recomendación que la selección del formato (ebook, tapa-dura, tapa-blanda)
;;
;; La edad del visitante también influye, ya que los obras para adultos no se pueden recomendar a los menores
;;
;; Hemos agrupado las preferencias en diferentes módulos:
;;   1 - MAIN
;;   2 - determina-epoca
;;   3 - preguntas-edad
;;   4 - preguntas-epoca
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
;; y pasamos al siguiente módulo: elegir las epoca preferida
;;
;;---------------------------------------------------------------------------------------------------------

(defmodule MAIN (export ?ALL))



;;-----------------------------------------------------------------------------------------
;; Inicializar las recomendaciones con prioridad 0
;; Regla inicial: para cada instancia de obra, crear el hecho (recomendacion obra prioridad)
;;-----------------------------------------------------------------------------------------
(defrule init-recomendaciones
  (declare (salience 1))
  ?obra <- (object (is-a Obras+de+arte))
  =>
  (assert (recomendacion (obra ?obra) (prioridad 0))))


;; Pasar al modulo de seleccion de epoca
(defrule siguiente-modulo "Salta al modulo para determinar la epoca"
  (declare (salience 0))
  =>
  (printout t "-------------------------------------------------------" crlf)
  (printout t "------ Sistema Experto de Recomendación de Obras ------" crlf)
  (printout t "-------------------------------------------------------" crlf crlf)
  (assert (epoca (nombre desconocida)))    ;; poner la epoca como desconocida
  (focus determina-epoca))                 	  ;; pasar al siguiente modulo


;;---------------------------------------------------------------------------------
;;
;; Aqui empezamos con el modulo de para determinar la epoca del usuario 
;; 
;;
;;---------------------------------------------------------------------------------

(defmodule determina-epoca "Preguntas para determinar epoca"
  (import MAIN ?ALL)
  (export ?ALL))


;; Determinar la epoca preferida del usuario
;; Seleccionar una epoca hace que las puntuaciones 
;;---------------------------------------------
(defrule pregunta-epoca "¿Qué epoca prefieres? Arte clásico, Medieval, Moderno, Contemporáneo"
  (declare (salience 5))
  ?t <- (epoca (nombre desconocida))
  =>
  (bind ?response
    (ask-question "¿Qué epoca prefieres?%n  1 - Arte clásico%n  2 - Medieval%n  3 - Moderno%n  4 - Contemporáneo"
                  1 2 3 4))
  (if (eq ?response 1) 
    then (modify ?t (nombre Arte-clasico))
         (incrementa-prioridad-obras epoca Arte-clasico 1000))
  (if (eq ?response 2) 
    then (modify ?t (nombre Medieval))
         (incrementa-prioridad-obras epoca Medieval 1000))
  (if (eq ?response 3) 
    then (modify ?t (nombre Moderno))
         (incrementa-prioridad-obras epoca Moderno 1000))
  (if (eq ?response 4) 
    then (modify ?t (nombre Contemporaneo))
         (incrementa-prioridad-obras epoca Contemporaneo 1000)))
