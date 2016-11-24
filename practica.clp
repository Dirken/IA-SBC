; Fri Dec 04 18:41:09 CET 2015
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot mundos-fantasticos
		(type SYMBOL)
		(allowed-values si no)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipo-obra
		(type SYMBOL)
		(allowed-values de-moda clasico normal)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot obras-similares
		(type STRING)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot epoca
		(type SYMBOL)
		(allowed-values ciencia-ficcion fantastica romantica negra)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot protagonistas
		(type SYMBOL)
		(allowed-values detectives mafiosos juzgados)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot viajes-temporales
		(type SYMBOL)
		(allowed-values si no)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot titulo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipo-visitante
		(type SYMBOL)
		(allowed-values casual avanzado)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot longitud
		(type SYMBOL)
		(allowed-values corto largo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot obras_Class4
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot autor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipo-romance
		(type SYMBOL)
		(allowed-values historico contemporaneo fantastico)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot muy-sensual
		(type SYMBOL)
		(allowed-values si no)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot formato
		(type SYMBOL)
		(allowed-values ebook tapa-dura tapa-blanda)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot best-seller
		(type SYMBOL)
		(allowed-values si no)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot futuro-alternativo
		(type SYMBOL)
		(allowed-values si no)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot raza
		(type SYMBOL)
		(allowed-values enanos elfos orcos humanos otras)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot accion
		(type SYMBOL)
		(allowed-values si no)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot utopia-distopia
		(type SYMBOL)
		(allowed-values utopia distopia ninguna)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot edad
		(type SYMBOL)
		(allowed-values todos-publicos adultos)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Libro
	(is-a USER)
	(role concrete)
	(single-slot epoca
		(type SYMBOL)
		(allowed-values ciencia-ficcion fantastica romantica negra)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot longitud
		(type SYMBOL)
		(allowed-values corto largo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot best-seller
		(type SYMBOL)
		(allowed-values si no)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot edad
		(type SYMBOL)
		(allowed-values todos-publicos adultos)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipo-obra
		(type SYMBOL)
		(allowed-values de-moda clasico normal)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot autor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot formato
		(type SYMBOL)
		(allowed-values ebook tapa-dura tapa-blanda)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot titulo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipo-visitante
		(type SYMBOL)
		(allowed-values casual avanzado)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot obras-similares
		(type STRING)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass LibroCiFi
	(is-a Libro)
	(role concrete)
	(single-slot viajes-temporales
		(type SYMBOL)
		(allowed-values si no)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot futuro-alternativo
		(type SYMBOL)
		(allowed-values si no)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot utopia-distopia
		(type SYMBOL)
		(allowed-values utopia distopia ninguna)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass LibroFantastica
	(is-a Libro)
	(role concrete)
	(single-slot raza
		(type SYMBOL)
		(allowed-values enanos elfos orcos humanos otras)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot mundos-fantasticos
		(type SYMBOL)
		(allowed-values si no)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass LibroRomantica
	(is-a Libro)
	(role concrete)
	(single-slot tipo-romance
		(type SYMBOL)
		(allowed-values historico contemporaneo fantastico)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot muy-sensual
		(type SYMBOL)
		(allowed-values si no)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass LibroNegra
	(is-a Libro)
	(role concrete)
	(single-slot protagonistas
		(type SYMBOL)
		(allowed-values detectives mafiosos juzgados)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot accion
		(type SYMBOL)
		(allowed-values si no)
;+		(cardinality 1 1)
		(create-accessor read-write)))

; Fri Dec 04 18:41:09 CET 2015
; 
;+ (version "3.5")
;+ (build "Build 663")
(definstances catalogo
([obras_Class0] of  LibroCiFi

	(autor "Joseph Wolf")
	(best-seller si)
	(edad adultos)
	(formato tapa-dura)
	(futuro-alternativo si)
	(obras-similares "Hemoplastia")
	(longitud largo)
	(epoca ciencia-ficcion)
	(tipo-visitante avanzado)
	(tipo-obra clasico)
	(titulo "BrazeRunner")
	(utopia-distopia distopia)
	(viajes-temporales no))

([obras_Class1] of  LibroCiFi

	(autor "Booker DeWith")
	(best-seller si)
	(edad adultos)
	(formato tapa-dura)
	(futuro-alternativo si)
	(obras-similares
		"Hemoplastia"
		"Columbia")
	(longitud largo)
	(epoca ciencia-ficcion)
	(tipo-visitante avanzado)
	(tipo-obra clasico)
	(titulo "About time")
	(utopia-distopia distopia)
	(viajes-temporales si))

([obras_Class10004] of  LibroCiFi

	(autor "Javier Bejar")
	(best-seller no)
	(edad adultos)
	(formato ebook)
	(futuro-alternativo si)
	(obras-similares "La granja")
	(longitud corto)
	(epoca ciencia-ficcion)
	(tipo-visitante casual)
	(tipo-obra normal)
	(titulo "La radiacion de fondo")
	(utopia-distopia utopia)
	(viajes-temporales si))

([obras_Class10005] of  LibroCiFi

	(autor "Joseph Wolf")
	(best-seller no)
	(edad todos-publicos)
	(formato ebook)
	(futuro-alternativo no)
	(obras-similares "La granja")
	(longitud largo)
	(epoca ciencia-ficcion)
	(tipo-visitante casual)
	(tipo-obra de-moda)
	(titulo "1987")
	(utopia-distopia ninguna)
	(viajes-temporales no))

([obras_Class10006] of  LibroFantastica

	(autor "Jorge Ramon Ramon Martin")
	(best-seller si)
	(edad adultos)
	(formato tapa-blanda)
	(obras-similares "La doncella y el oso")
	(longitud largo)
	(mundos-fantasticos si)
	(raza humanos)
	(epoca fantastica)
	(tipo-visitante avanzado)
	(tipo-obra de-moda)
	(titulo "Juego de Tonos"))

([obras_Class10007] of  LibroFantastica

	(autor "Ron Coletti")
	(best-seller no)
	(edad todos-publicos)
	(formato ebook)
	(obras-similares "La doncella y el oso")
	(longitud corto)
	(mundos-fantasticos si)
	(raza elfos)
	(epoca fantastica)
	(tipo-visitante avanzado)
	(tipo-obra de-moda)
	(titulo "Sistema Experto"))

([obras_Class10008] of  LibroFantastica

	(autor "Jorge Ramon Ramon Martin")
	(best-seller no)
	(edad adultos)
	(formato tapa-dura)
	(obras-similares "Verde Rojo Azul")
	(longitud largo)
	(mundos-fantasticos si)
	(raza orcos)
	(epoca fantastica)
	(tipo-visitante casual)
	(tipo-obra clasico)
	(titulo "Worlds of Draenor"))

([obras_Class10009] of  LibroFantastica

	(autor "James Milk")
	(best-seller si)
	(edad todos-publicos)
	(formato ebook)
	(obras-similares
		"Sistema Experto"
		"Juego de Tonos")
	(longitud corto)
	(mundos-fantasticos no)
	(raza otras)
	(epoca fantastica)
	(tipo-visitante casual)
	(tipo-obra clasico)
	(titulo "La doncella y el oso"))

([obras_Class10010] of  LibroFantastica

	(autor "Ron Coletti")
	(best-seller no)
	(edad adultos)
	(formato tapa-blanda)
	(obras-similares
		"Worlds of Draenor"
		"Mazmorras y Salamandras")
	(longitud corto)
	(mundos-fantasticos no)
	(raza humanos)
	(epoca fantastica)
	(tipo-visitante avanzado)
	(tipo-obra de-moda)
	(titulo "Verde Rojo Azul"))

([obras_Class10011] of  LibroFantastica

	(autor "Ron Coletti")
	(best-seller si)
	(edad adultos)
	(formato tapa-blanda)
	(obras-similares "El señor de los pardillos")
	(longitud largo)
	(mundos-fantasticos si)
	(raza otras)
	(epoca fantastica)
	(tipo-visitante casual)
	(tipo-obra de-moda)
	(titulo "Depredador"))

([obras_Class10012] of  LibroCiFi

	(autor "Leonardo Nimoyo")
	(best-seller si)
	(edad todos-publicos)
	(formato tapa-dura)
	(futuro-alternativo no)
	(obras-similares "Columbia")
	(longitud largo)
	(epoca ciencia-ficcion)
	(tipo-visitante avanzado)
	(tipo-obra clasico)
	(titulo "Un dia como Vulcano")
	(utopia-distopia ninguna)
	(viajes-temporales si))

([obras_Class10013] of  LibroCiFi

	(autor "Booker DeWith")
	(best-seller no)
	(edad adultos)
	(formato tapa-dura)
	(futuro-alternativo no)
	(obras-similares "Un dia como Vulcano")
	(longitud largo)
	(epoca ciencia-ficcion)
	(tipo-visitante casual)
	(tipo-obra normal)
	(titulo "Columbia")
	(utopia-distopia utopia)
	(viajes-temporales si))

([obras_Class10014] of  LibroFantastica

	(autor "Jeremias Sauron")
	(best-seller si)
	(edad adultos)
	(formato tapa-dura)
	(obras-similares "Depredador")
	(longitud largo)
	(mundos-fantasticos si)
	(raza orcos)
	(epoca fantastica)
	(tipo-visitante casual)
	(tipo-obra normal)
	(titulo "El señor de los pardillos"))

([obras_Class10015] of  LibroFantastica

	(autor "Jeremias Sauron")
	(best-seller si)
	(edad todos-publicos)
	(formato tapa-blanda)
	(obras-similares "Verde Rojo Azul")
	(longitud largo)
	(mundos-fantasticos si)
	(raza enanos)
	(epoca fantastica)
	(tipo-visitante casual)
	(tipo-obra normal)
	(titulo "Mazmorras y Salamandras"))

([obras_Class10016] of  LibroNegra

	(accion si)
	(autor "Esteban Reyes")
	(best-seller no)
	(edad adultos)
	(formato tapa-dura)
	(obras-similares
		"En busca de la ontologia perdida"
		"El cabo del pavor")
	(longitud corto)
	(protagonistas detectives)
	(epoca negra)
	(tipo-visitante avanzado)
	(tipo-obra de-moda)
	(titulo "La tapadera"))

([obras_Class10017] of  LibroNegra

	(accion si)
	(autor "Esteban Reyes")
	(best-seller si)
	(edad adultos)
	(formato tapa-dura)
	(obras-similares
		"La tapadera"
		"Spanish History Z"
		"Spanish History Y")
	(longitud corto)
	(protagonistas mafiosos)
	(epoca negra)
	(tipo-visitante casual)
	(tipo-obra de-moda)
	(titulo "En busca de la ontologia perdida"))

([obras_Class10018] of  LibroNegra

	(accion no)
	(autor "Kevin Safer")
	(best-seller si)
	(edad todos-publicos)
	(formato ebook)
	(obras-similares "La tapadera")
	(longitud corto)
	(protagonistas mafiosos)
	(epoca negra)
	(tipo-visitante avanzado)
	(tipo-obra normal)
	(titulo "El cabo del pavor"))

([obras_Class10019] of  LibroNegra

	(accion no)
	(autor "Kevin Safer")
	(best-seller si)
	(edad adultos)
	(formato tapa-blanda)
	(obras-similares
		"Una historia de violencia"
		"El gemelo perdido")
	(longitud corto)
	(protagonistas juzgados)
	(epoca negra)
	(tipo-visitante avanzado)
	(tipo-obra de-moda)
	(titulo "La sala oculta"))

([obras_Class10020] of  LibroNegra

	(accion si)
	(autor "Rodolfo Charles")
	(best-seller no)
	(edad todos-publicos)
	(formato tapa-blanda)
	(obras-similares "La sala oculta")
	(longitud corto)
	(protagonistas detectives)
	(epoca negra)
	(tipo-visitante avanzado)
	(tipo-obra clasico)
	(titulo "El gemelo perdido"))

([obras_Class10021] of  LibroNegra

	(accion si)
	(autor "Ramon Cajon")
	(best-seller no)
	(edad adultos)
	(formato ebook)
	(obras-similares
		"En busca de la ontologia perdida"
		"Spanish History Y")
	(longitud corto)
	(protagonistas mafiosos)
	(epoca negra)
	(tipo-visitante casual)
	(tipo-obra normal)
	(titulo "Spanish History Z"))

([obras_Class10023] of  LibroNegra

	(accion no)
	(autor "Ramon Cajon")
	(best-seller si)
	(edad adultos)
	(formato tapa-dura)
	(obras-similares "La sala oculta")
	(longitud corto)
	(protagonistas detectives)
	(epoca negra)
	(tipo-visitante casual)
	(tipo-obra de-moda)
	(titulo "Una historia de violencia"))

([obras_Class10026] of  LibroNegra

	(accion si)
	(autor "Ramon Cajon")
	(best-seller si)
	(edad adultos)
	(formato ebook)
	(obras-similares
		"En busca de la ontologia perdida"
		"Spanish History Z")
	(longitud corto)
	(protagonistas mafiosos)
	(epoca negra)
	(tipo-visitante casual)
	(tipo-obra normal)
	(titulo "Spanish History Y"))

([obras_Class10027] of  LibroRomantica

	(autor "Susan Sander")
	(best-seller no)
	(edad adultos)
	(formato tapa-blanda)
	(longitud largo)
	(muy-sensual si)
	(epoca romantica)
	(tipo-visitante avanzado)
	(tipo-obra clasico)
	(tipo-romance historico)
	(titulo "Ojala yo tuviera este primero"))

([obras_Class10028] of  LibroRomantica

	(autor "David de Mairena")
	(best-seller si)
	(edad adultos)
	(formato ebook)
	(obras-similares "Los blancos no la saben meter")
	(longitud largo)
	(muy-sensual no)
	(epoca romantica)
	(tipo-visitante avanzado)
	(tipo-obra normal)
	(tipo-romance contemporaneo)
	(titulo "Las mujeres aguantan mas"))

([obras_Class10029] of  LibroRomantica

	(autor "Susan Sander")
	(best-seller si)
	(edad todos-publicos)
	(formato tapa-blanda)
	(obras-similares
		"Relacion a CLIPStancia"
		"Cumbres Borrascosas")
	(longitud corto)
	(muy-sensual no)
	(epoca romantica)
	(tipo-visitante casual)
	(tipo-obra clasico)
	(tipo-romance fantastico)
	(titulo "Pasion de Centollos"))

([obras_Class10030] of  LibroRomantica

	(autor "Jack Neylon")
	(best-seller si)
	(edad todos-publicos)
	(formato ebook)
	(obras-similares "Las mujeres aguantan mas")
	(longitud corto)
	(muy-sensual no)
	(epoca romantica)
	(tipo-visitante avanzado)
	(tipo-obra normal)
	(tipo-romance fantastico)
	(titulo "Los blancos no la saben meter"))

([obras_Class10031] of  LibroRomantica

	(autor "Jack Neylon")
	(best-seller no)
	(edad adultos)
	(formato tapa-blanda)
	(obras-similares
		"El triangulo del amor"
		"Pasion de Centollos")
	(longitud largo)
	(muy-sensual si)
	(epoca romantica)
	(tipo-visitante avanzado)
	(tipo-obra de-moda)
	(tipo-romance fantastico)
	(titulo "Cumbres Borrascosas"))

([obras_Class10032] of  LibroRomantica

	(autor "Susan Sander")
	(best-seller si)
	(edad adultos)
	(formato tapa-blanda)
	(obras-similares "Cumbres Borrascosas")
	(longitud corto)
	(muy-sensual no)
	(epoca romantica)
	(tipo-visitante casual)
	(tipo-obra normal)
	(tipo-romance historico)
	(titulo "El triangulo del amor"))

([obras_Class10033] of  LibroRomantica

	(autor "Jack Neylon")
	(best-seller no)
	(edad adultos)
	(formato ebook)
	(obras-similares "Pasion de Centollos")
	(longitud largo)
	(muy-sensual si)
	(epoca romantica)
	(tipo-visitante casual)
	(tipo-obra normal)
	(tipo-romance contemporaneo)
	(titulo "Relacion a CLIPStancia"))

([obras_Class10034] of  LibroRomantica

	(autor "David de Mairena")
	(best-seller no)
	(edad adultos)
	(formato ebook)
	(obras-similares "Ojala yo tuviera este primero")
	(longitud corto)
	(muy-sensual no)
	(epoca romantica)
	(tipo-visitante casual)
	(tipo-obra normal)
	(tipo-romance fantastico)
	(titulo "La ultima relacion"))

([obras_Class2] of  LibroCiFi

	(autor "Tom Anderson")
	(best-seller si)
	(edad adultos)
	(formato tapa-dura)
	(futuro-alternativo no)
	(obras-similares
		"BrazeRunner"
		"About time")
	(longitud largo)
	(epoca ciencia-ficcion)
	(tipo-visitante avanzado)
	(tipo-obra clasico)
	(titulo "Hemoplastia")
	(utopia-distopia distopia)
	(viajes-temporales no))

([obras_Class3] of  LibroCiFi

	(autor "Joseph Wolf")
	(best-seller no)
	(edad todos-publicos)
	(formato tapa-blanda)
	(futuro-alternativo no)
	(obras-similares
		"La radiacion de fondo"
		"1987")
	(longitud largo)
	(epoca ciencia-ficcion)
	(tipo-visitante casual)
	(tipo-obra de-moda)
	(titulo "La granja")
	(utopia-distopia utopia)
	(viajes-temporales si))
		)
;;---------------------------------------------------------
;;
;; Template para las recomendaciones:
;;
;;---------------------------------------------------------

(deftemplate recomendacion
     (slot obra)
     (slot prioridad))



;;---------------------------------------------------------
;;
;; Template para guardar la epoca preferida del visitante
;;
;;---------------------------------------------------------

(deftemplate epoca "epoca preferida"
  (slot nombre))

	

;;---------------------------------------------------------
;;
;; Cuantos obras hemos imprimido
;;
;;---------------------------------------------------------

(defglobal ?*recomendacionesImprimidas* = 0)



;;---------------------------------------------------------
;;
;; Funciones para preguntar cosas
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

;;---------------------------------------------------------------------------------------------------------
;;
;; A partir de una base de datos de obras, queremos:
;;   Recomendar un máxímo de 3 obras al usuario -una recomendación es simplemente un par <obra, prioridad>-,
;;   basándonos en la relación entre sus preferencias y los atributos (o 'slots') de cada obra.
;;   Esa relación influye en el valor del prioridad de un recomendacion, si el obra correspondiente 
;;   satisface las preferencias del usuario.
;;
;; Naturalmente, algunas preferencias tendrán más peso que otras; por ejemplo la temática del obra aporta 
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
;; y pasamos al siguiente módulo: elegir las temática preferida
;;
;;---------------------------------------------------------------------------------------------------------

(defmodule MAIN (export ?ALL))



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


