; Wed Dec 07 18:41:31 CET 2016
; 
;+ (version "3.5")
;+ (build "Build 663")

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
	(single-slot Autorretrato
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
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
		(type STRING)
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
	(single-slot Estilo
		(type STRING)
;+		(cardinality 1 1)
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
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Estilo
		(type STRING)
;+		(cardinality 1 1)
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
	(single-slot Autor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Estilo
		(type STRING)
;+		(cardinality 1 1)
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
	([KB_388996_Class19] of  ObraDeArte

		(AnyoCreacion 5)
		(Autor "a")
		(Complejidad 5)
		(Dimensiones Mediano)
		(Epoca "a")
		(Estilo "a")
		(Mayor18 TRUE)
		(Nombre "a")
		(Relevancia 5)
		(Sala "a"))

	([KB_388996_Class20] of  Pintor

		(Autor "a")
		(Epoca "a")
		(Estilo "a")
		(Nacionalidad "a")
		(Nombre "a")
		(Obras [KB_388996_Class19]))

	([KB_388996_Class21] of  Visitante

		(ConocimientoArte Medio)
		(DiasVisita 1)
		(DuracionVisita 2)
		(Preferencias "a")
		(Tipo Individuo))

	([KB_388996_Class22] of  Religioso

		(AnyoCreacion 5)
		(Autor "a")
		(Complejidad 5)
		(Cristo TRUE)
		(Dimensiones Pequenyo)
		(Eden FALSE)
		(Epoca "a")
		(Estilo "a")
		(Mayor18 TRUE)
		(Nombre "a")
		(Relevancia 5)
		(Sala "a"))

	([KB_388996_Class23] of  Personas

		(AnyoCreacion 13131)
		(Autor "c")
		(Autorretrato FALSE)
		(Complejidad 4)
		(Dimensiones Grande)
		(Epoca "c")
		(Estilo "a")
		(Famoso TRUE)
		(Mayor18 FALSE)
		(Nombre "adafadfgaf")
		(Relevancia 10)
		(Sala "c"))

	([KB_388996_Class24] of  Otros

		(AnyoCreacion 15)
		(Autor "marin")
		(Complejidad 0)
		(Dimensiones Grande)
		(Epoca "cabonr")
		(Estilo "friendzone")
		(Flores TRUE)
		(Frutas TRUE)
		(Mayor18 TRUE)
		(Nombre ".l.")
		(Relevancia 0)
		(Sala "joputa"))

	([KB_388996_Class25] of  Belico

		(AnyoCreacion 1994)
		(Autor "hahahahah")
		(Complejidad 10)
		(Dimensiones Grande)
		(Epoca "sí")
		(Estilo "puño")
		(Mayor18 TRUE)
		(Muerte TRUE)
		(Nombre "asdf")
		(Relevancia 0)
		(Sala "easy")
		(Violento TRUE))
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
;; es de epoca ?epoca, y tiene el slot ?slot con valor igual que ?valor
;; El incremento de prioridad será de ?inc
;;---------------------------------------------------------------------------
(deffunction incrementa-prioridad-obras-epoca (?epoca ?slot ?valor ?inc)
  (progn$ (?f (get-fact-list)) 
    (if (eq (fact-relation ?f) recomendacion) then 
      (bind ?ObraDeArte (fact-slot-value ?f ObraDeArte))
      (if (and
        (eq (send ?ObraDeArte get-epoca) ?epoca)
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
  ?ObraDeArte <- (object (is-a ObraDeArte))
  =>
  (assert (recomendacion (ObraDeArte ?ObraDeArte) (prioridad 0))))


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
;;---------------------------------------------------------------------------------

(defmodule determina-epoca "Preguntas para determinar epoca"
  (import MAIN ?ALL)
  (export ?ALL))

;;---------------------------------------------
;; Determinar la epoca preferida del usuario
;;---------------------------------------------

(defrule pregunta-epoca "¿Qué epoca prefieres? Contemporáneo, Medieval, Moderno, Ninguna"
  (declare (salience 5))
  ?t <- (epoca (nombre desconocida))
  =>
  (bind ?response
    (ask-question "¿Qué epoca prefieres?%n  1 - Contemporáneo%n  2 - Medieval%n  3 - Moderno%n  4 - Ninguna"
                  1 2 3 4))
  (if (eq ?response 1) 
    then (modify ?t (nombre Contemporaneo))
         (incrementa-prioridad-obras epoca Contemporaneo 1000))
  (if (eq ?response 2) 
    then (modify ?t (nombre Medieval))
         (incrementa-prioridad-obras epoca Medieval 1000))
  (if (eq ?response 3) 
    then (modify ?t (nombre Moderno))
         (incrementa-prioridad-obras epoca Moderno 1000)))


;; Saltar al modulo edad
;;----------------------
(defrule fin-determina-epoca "Fin pregunta eleccion epoca"
  (declare (salience 0))
  =>
  (focus preguntas-grupo))


;;---------------------------------------------------------------------------------
;;
;; Preguntas Grupo o Solo
;;
;;---------------------------------------------------------------------------------

;; Definicion del modulo
;;----------------------
(defmodule preguntas-grupo "Preguntas para determinar si es un grupo"
  (import determina-epoca ?ALL)
  (export ?ALL))

;;---------------------------------------------
;; Determinar si va en grupo o en solitario
;;---------------------------------------------

(defrule pregunta-grupo "Preguntas para determinar si viene solo o acompañado"
  (declare (salience 10))
  =>
  (if (si-o-no-p "¿Vas a venir solo? (s/n)")
    then (assert (grupo-o-solo solo))
    else (assert (grupo-o-solo grupo))))

;; Saltar al modulo autores
;;--------------------------------------------------
(defrule fin-preguntas-grupo "Fin preguntas grupo"
  (declare (salience 0))
  =>
  (focus preguntas-autor))


;;---------------------------------------------------------------------------------
;;
;; Preguntas Autores
;;
;;---------------------------------------------------------------------------------

(defmodule preguntas-autor "Preguntas para determinar que autor le gusta más o ninguno"
  (import preguntas-grupo ?ALL)
  (export ?ALL))



;;---------------------------------------------
;; Determinar si tiene algun autor preferido
;;---------------------------------------------

(defrule pregunta-autor
  (declare (salience 10))
  =>
  (bind ?response
    (ask-question "¿Cuál de estos autores prefieres?%n1 - Velázquez%n2 - Caravaggio%n3 - Goya%n4 - Ninguno%n"
                  1 2 3 4))
    (if (eq ?response 1) then (assert (autor Velazquez)))
    (if (eq ?response 2) then (assert (autor Caravaggio)))
    (if (eq ?response 3) then (assert (autor Goya))))

;; Fin preguntas Autores
;;-----------------------------------
(defrule fin-preguntas-autor "Fin preguntas específicas de epoca"
  (declare (salience 0))
  =>
  (focus preguntas-conocimiento-arte))


;---------------------------------------------------------------------------------
;;
;; Preguntas Conocimientos de arte
;;
;;---------------------------------------------------------------------------------

(defmodule preguntas-conocimiento-arte "Preguntas para determinar que  tanto sabe de arte"
  (import preguntas-autor ?ALL)
  (export ?ALL))

;;------------------------------------------------
;; Determinar el conocimiento que tiene sobre arte
;;------------------------------------------------

(defrule pregunta-conocimiento-arte
  (declare (salience 10))
  =>
  (bind ?response
    (ask-question "¿Que conocimientos tienes de arte?%n1 - Nada%n2 - Conozco algunas obras pero no muchas%n3 - Soy todo un experto%n"
                  1 2 3))
    (if (eq ?response 1) then (assert (conocimiento-arte Nada)))
    (if (eq ?response 2) then (assert (conocimiento-arte Normal)))
    (if (eq ?response 3) then (assert (conocimiento-arte Experto))))

;; Fin preguntas conocimiento de arte
;;-----------------------------------

(defrule fin-preguntas-conocimiento-arte "Pasa a imprimir las recomendaciones"
  (declare (salience 0))
  =>
  (focus imprime-recomendaciones))

;;---------------------------------------------------------------------------------
;;
;; Modulo imprimir recomendaciones
;;
;;---------------------------------------------------------------------------------

(defmodule imprime-recomendaciones "Imprimir las 3 obras que debe visitar"
  (import preguntas-conocimiento-arte ?ALL)
  (export ?ALL))

