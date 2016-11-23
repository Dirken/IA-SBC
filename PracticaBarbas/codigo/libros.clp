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
	(single-slot tipo-libro
		(type SYMBOL)
		(allowed-values de-moda clasico normal)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot libros-similares
		(type STRING)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot tematica
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
	(single-slot tipo-lector
		(type SYMBOL)
		(allowed-values casual avanzado)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot longitud
		(type SYMBOL)
		(allowed-values corto largo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot libros_Class4
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
	(single-slot tematica
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
	(single-slot tipo-libro
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
	(single-slot tipo-lector
		(type SYMBOL)
		(allowed-values casual avanzado)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot libros-similares
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
([libros_Class0] of  LibroCiFi

	(autor "Joseph Wolf")
	(best-seller si)
	(edad adultos)
	(formato tapa-dura)
	(futuro-alternativo si)
	(libros-similares "Hemoplastia")
	(longitud largo)
	(tematica ciencia-ficcion)
	(tipo-lector avanzado)
	(tipo-libro clasico)
	(titulo "BrazeRunner")
	(utopia-distopia distopia)
	(viajes-temporales no))

([libros_Class1] of  LibroCiFi

	(autor "Booker DeWith")
	(best-seller si)
	(edad adultos)
	(formato tapa-dura)
	(futuro-alternativo si)
	(libros-similares
		"Hemoplastia"
		"Columbia")
	(longitud largo)
	(tematica ciencia-ficcion)
	(tipo-lector avanzado)
	(tipo-libro clasico)
	(titulo "About time")
	(utopia-distopia distopia)
	(viajes-temporales si))

([libros_Class10004] of  LibroCiFi

	(autor "Javier Bejar")
	(best-seller no)
	(edad adultos)
	(formato ebook)
	(futuro-alternativo si)
	(libros-similares "La granja")
	(longitud corto)
	(tematica ciencia-ficcion)
	(tipo-lector casual)
	(tipo-libro normal)
	(titulo "La radiacion de fondo")
	(utopia-distopia utopia)
	(viajes-temporales si))

([libros_Class10005] of  LibroCiFi

	(autor "Joseph Wolf")
	(best-seller no)
	(edad todos-publicos)
	(formato ebook)
	(futuro-alternativo no)
	(libros-similares "La granja")
	(longitud largo)
	(tematica ciencia-ficcion)
	(tipo-lector casual)
	(tipo-libro de-moda)
	(titulo "1987")
	(utopia-distopia ninguna)
	(viajes-temporales no))

([libros_Class10006] of  LibroFantastica

	(autor "Jorge Ramon Ramon Martin")
	(best-seller si)
	(edad adultos)
	(formato tapa-blanda)
	(libros-similares "La doncella y el oso")
	(longitud largo)
	(mundos-fantasticos si)
	(raza humanos)
	(tematica fantastica)
	(tipo-lector avanzado)
	(tipo-libro de-moda)
	(titulo "Juego de Tonos"))

([libros_Class10007] of  LibroFantastica

	(autor "Ron Coletti")
	(best-seller no)
	(edad todos-publicos)
	(formato ebook)
	(libros-similares "La doncella y el oso")
	(longitud corto)
	(mundos-fantasticos si)
	(raza elfos)
	(tematica fantastica)
	(tipo-lector avanzado)
	(tipo-libro de-moda)
	(titulo "Sistema Experto"))

([libros_Class10008] of  LibroFantastica

	(autor "Jorge Ramon Ramon Martin")
	(best-seller no)
	(edad adultos)
	(formato tapa-dura)
	(libros-similares "Verde Rojo Azul")
	(longitud largo)
	(mundos-fantasticos si)
	(raza orcos)
	(tematica fantastica)
	(tipo-lector casual)
	(tipo-libro clasico)
	(titulo "Worlds of Draenor"))

([libros_Class10009] of  LibroFantastica

	(autor "James Milk")
	(best-seller si)
	(edad todos-publicos)
	(formato ebook)
	(libros-similares
		"Sistema Experto"
		"Juego de Tonos")
	(longitud corto)
	(mundos-fantasticos no)
	(raza otras)
	(tematica fantastica)
	(tipo-lector casual)
	(tipo-libro clasico)
	(titulo "La doncella y el oso"))

([libros_Class10010] of  LibroFantastica

	(autor "Ron Coletti")
	(best-seller no)
	(edad adultos)
	(formato tapa-blanda)
	(libros-similares
		"Worlds of Draenor"
		"Mazmorras y Salamandras")
	(longitud corto)
	(mundos-fantasticos no)
	(raza humanos)
	(tematica fantastica)
	(tipo-lector avanzado)
	(tipo-libro de-moda)
	(titulo "Verde Rojo Azul"))

([libros_Class10011] of  LibroFantastica

	(autor "Ron Coletti")
	(best-seller si)
	(edad adultos)
	(formato tapa-blanda)
	(libros-similares "El señor de los pardillos")
	(longitud largo)
	(mundos-fantasticos si)
	(raza otras)
	(tematica fantastica)
	(tipo-lector casual)
	(tipo-libro de-moda)
	(titulo "Depredador"))

([libros_Class10012] of  LibroCiFi

	(autor "Leonardo Nimoyo")
	(best-seller si)
	(edad todos-publicos)
	(formato tapa-dura)
	(futuro-alternativo no)
	(libros-similares "Columbia")
	(longitud largo)
	(tematica ciencia-ficcion)
	(tipo-lector avanzado)
	(tipo-libro clasico)
	(titulo "Un dia como Vulcano")
	(utopia-distopia ninguna)
	(viajes-temporales si))

([libros_Class10013] of  LibroCiFi

	(autor "Booker DeWith")
	(best-seller no)
	(edad adultos)
	(formato tapa-dura)
	(futuro-alternativo no)
	(libros-similares "Un dia como Vulcano")
	(longitud largo)
	(tematica ciencia-ficcion)
	(tipo-lector casual)
	(tipo-libro normal)
	(titulo "Columbia")
	(utopia-distopia utopia)
	(viajes-temporales si))

([libros_Class10014] of  LibroFantastica

	(autor "Jeremias Sauron")
	(best-seller si)
	(edad adultos)
	(formato tapa-dura)
	(libros-similares "Depredador")
	(longitud largo)
	(mundos-fantasticos si)
	(raza orcos)
	(tematica fantastica)
	(tipo-lector casual)
	(tipo-libro normal)
	(titulo "El señor de los pardillos"))

([libros_Class10015] of  LibroFantastica

	(autor "Jeremias Sauron")
	(best-seller si)
	(edad todos-publicos)
	(formato tapa-blanda)
	(libros-similares "Verde Rojo Azul")
	(longitud largo)
	(mundos-fantasticos si)
	(raza enanos)
	(tematica fantastica)
	(tipo-lector casual)
	(tipo-libro normal)
	(titulo "Mazmorras y Salamandras"))

([libros_Class10016] of  LibroNegra

	(accion si)
	(autor "Esteban Reyes")
	(best-seller no)
	(edad adultos)
	(formato tapa-dura)
	(libros-similares
		"En busca de la ontologia perdida"
		"El cabo del pavor")
	(longitud corto)
	(protagonistas detectives)
	(tematica negra)
	(tipo-lector avanzado)
	(tipo-libro de-moda)
	(titulo "La tapadera"))

([libros_Class10017] of  LibroNegra

	(accion si)
	(autor "Esteban Reyes")
	(best-seller si)
	(edad adultos)
	(formato tapa-dura)
	(libros-similares
		"La tapadera"
		"Spanish History Z"
		"Spanish History Y")
	(longitud corto)
	(protagonistas mafiosos)
	(tematica negra)
	(tipo-lector casual)
	(tipo-libro de-moda)
	(titulo "En busca de la ontologia perdida"))

([libros_Class10018] of  LibroNegra

	(accion no)
	(autor "Kevin Safer")
	(best-seller si)
	(edad todos-publicos)
	(formato ebook)
	(libros-similares "La tapadera")
	(longitud corto)
	(protagonistas mafiosos)
	(tematica negra)
	(tipo-lector avanzado)
	(tipo-libro normal)
	(titulo "El cabo del pavor"))

([libros_Class10019] of  LibroNegra

	(accion no)
	(autor "Kevin Safer")
	(best-seller si)
	(edad adultos)
	(formato tapa-blanda)
	(libros-similares
		"Una historia de violencia"
		"El gemelo perdido")
	(longitud corto)
	(protagonistas juzgados)
	(tematica negra)
	(tipo-lector avanzado)
	(tipo-libro de-moda)
	(titulo "La sala oculta"))

([libros_Class10020] of  LibroNegra

	(accion si)
	(autor "Rodolfo Charles")
	(best-seller no)
	(edad todos-publicos)
	(formato tapa-blanda)
	(libros-similares "La sala oculta")
	(longitud corto)
	(protagonistas detectives)
	(tematica negra)
	(tipo-lector avanzado)
	(tipo-libro clasico)
	(titulo "El gemelo perdido"))

([libros_Class10021] of  LibroNegra

	(accion si)
	(autor "Ramon Cajon")
	(best-seller no)
	(edad adultos)
	(formato ebook)
	(libros-similares
		"En busca de la ontologia perdida"
		"Spanish History Y")
	(longitud corto)
	(protagonistas mafiosos)
	(tematica negra)
	(tipo-lector casual)
	(tipo-libro normal)
	(titulo "Spanish History Z"))

([libros_Class10023] of  LibroNegra

	(accion no)
	(autor "Ramon Cajon")
	(best-seller si)
	(edad adultos)
	(formato tapa-dura)
	(libros-similares "La sala oculta")
	(longitud corto)
	(protagonistas detectives)
	(tematica negra)
	(tipo-lector casual)
	(tipo-libro de-moda)
	(titulo "Una historia de violencia"))

([libros_Class10026] of  LibroNegra

	(accion si)
	(autor "Ramon Cajon")
	(best-seller si)
	(edad adultos)
	(formato ebook)
	(libros-similares
		"En busca de la ontologia perdida"
		"Spanish History Z")
	(longitud corto)
	(protagonistas mafiosos)
	(tematica negra)
	(tipo-lector casual)
	(tipo-libro normal)
	(titulo "Spanish History Y"))

([libros_Class10027] of  LibroRomantica

	(autor "Susan Sander")
	(best-seller no)
	(edad adultos)
	(formato tapa-blanda)
	(longitud largo)
	(muy-sensual si)
	(tematica romantica)
	(tipo-lector avanzado)
	(tipo-libro clasico)
	(tipo-romance historico)
	(titulo "Ojala yo tuviera este primero"))

([libros_Class10028] of  LibroRomantica

	(autor "David de Mairena")
	(best-seller si)
	(edad adultos)
	(formato ebook)
	(libros-similares "Los blancos no la saben meter")
	(longitud largo)
	(muy-sensual no)
	(tematica romantica)
	(tipo-lector avanzado)
	(tipo-libro normal)
	(tipo-romance contemporaneo)
	(titulo "Las mujeres aguantan mas"))

([libros_Class10029] of  LibroRomantica

	(autor "Susan Sander")
	(best-seller si)
	(edad todos-publicos)
	(formato tapa-blanda)
	(libros-similares
		"Relacion a CLIPStancia"
		"Cumbres Borrascosas")
	(longitud corto)
	(muy-sensual no)
	(tematica romantica)
	(tipo-lector casual)
	(tipo-libro clasico)
	(tipo-romance fantastico)
	(titulo "Pasion de Centollos"))

([libros_Class10030] of  LibroRomantica

	(autor "Jack Neylon")
	(best-seller si)
	(edad todos-publicos)
	(formato ebook)
	(libros-similares "Las mujeres aguantan mas")
	(longitud corto)
	(muy-sensual no)
	(tematica romantica)
	(tipo-lector avanzado)
	(tipo-libro normal)
	(tipo-romance fantastico)
	(titulo "Los blancos no la saben meter"))

([libros_Class10031] of  LibroRomantica

	(autor "Jack Neylon")
	(best-seller no)
	(edad adultos)
	(formato tapa-blanda)
	(libros-similares
		"El triangulo del amor"
		"Pasion de Centollos")
	(longitud largo)
	(muy-sensual si)
	(tematica romantica)
	(tipo-lector avanzado)
	(tipo-libro de-moda)
	(tipo-romance fantastico)
	(titulo "Cumbres Borrascosas"))

([libros_Class10032] of  LibroRomantica

	(autor "Susan Sander")
	(best-seller si)
	(edad adultos)
	(formato tapa-blanda)
	(libros-similares "Cumbres Borrascosas")
	(longitud corto)
	(muy-sensual no)
	(tematica romantica)
	(tipo-lector casual)
	(tipo-libro normal)
	(tipo-romance historico)
	(titulo "El triangulo del amor"))

([libros_Class10033] of  LibroRomantica

	(autor "Jack Neylon")
	(best-seller no)
	(edad adultos)
	(formato ebook)
	(libros-similares "Pasion de Centollos")
	(longitud largo)
	(muy-sensual si)
	(tematica romantica)
	(tipo-lector casual)
	(tipo-libro normal)
	(tipo-romance contemporaneo)
	(titulo "Relacion a CLIPStancia"))

([libros_Class10034] of  LibroRomantica

	(autor "David de Mairena")
	(best-seller no)
	(edad adultos)
	(formato ebook)
	(libros-similares "Ojala yo tuviera este primero")
	(longitud corto)
	(muy-sensual no)
	(tematica romantica)
	(tipo-lector casual)
	(tipo-libro normal)
	(tipo-romance fantastico)
	(titulo "La ultima relacion"))

([libros_Class2] of  LibroCiFi

	(autor "Tom Anderson")
	(best-seller si)
	(edad adultos)
	(formato tapa-dura)
	(futuro-alternativo no)
	(libros-similares
		"BrazeRunner"
		"About time")
	(longitud largo)
	(tematica ciencia-ficcion)
	(tipo-lector avanzado)
	(tipo-libro clasico)
	(titulo "Hemoplastia")
	(utopia-distopia distopia)
	(viajes-temporales no))

([libros_Class3] of  LibroCiFi

	(autor "Joseph Wolf")
	(best-seller no)
	(edad todos-publicos)
	(formato tapa-blanda)
	(futuro-alternativo no)
	(libros-similares
		"La radiacion de fondo"
		"1987")
	(longitud largo)
	(tematica ciencia-ficcion)
	(tipo-lector casual)
	(tipo-libro de-moda)
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
     (slot libro)
     (slot rating))



;;---------------------------------------------------------
;;
;; Template para guardar la tematica preferida del lector
;;
;;---------------------------------------------------------

(deftemplate tematica "tematica preferida"
  (slot nombre))



;;---------------------------------------------------------
;;
;; Cuantos libros hemos imprimido
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




;;----------------------------------------------------------------
;;
;; Funciones para tocar el rating de todas las recomendaciones
;;
;;----------------------------------------------------------------

;;------------------------------------------------------
;; Incrementa el rating del hecho ?recomendacion en ?inc
;;------------------------------------------------------
(deffunction incrementa-rating-recomendacion (?recomendacion ?inc)
  (modify ?recomendacion (rating (+ (fact-slot-value ?recomendacion rating) ?inc))))


;;-------------------------------------------------------------
;; Incrementa el rating de todas las recomandaciones cuyo libro
;; tiene el slot ?slot con valor igual que ?valor
;; El incremento de rating será de ?inc
;;-------------------------------------------------------------
(deffunction incrementa-rating-libros (?slot ?valor ?inc)
  (progn$ (?f (get-fact-list)) 
    (if (eq (fact-relation ?f) recomendacion) then 
      (bind ?libro (fact-slot-value ?f libro))
      (if (eq (send ?libro (sym-cat get- ?slot)) ?valor) then 
        (incrementa-rating-recomendacion ?f ?inc)))))


;;-------------------------------------------------------------
;; Incrementa el rating de todas las recomandaciones cuyo libro
;; tiene el multislot ?slot con valor igual que ?valor
;; El incremento de rating será de ?inc
;;-------------------------------------------------------------
(deffunction incrementa-rating-libros-lista (?slot ?valor ?inc)
  (progn$ (?f (get-fact-list)) 
    (if (eq (fact-relation ?f) recomendacion) then 
      (bind ?libro (fact-slot-value ?f libro))
      (if (member ?valor (send ?libro (sym-cat get- ?slot))) then 
        (incrementa-rating-recomendacion ?f ?inc)))))



;;---------------------------------------------------------------------------
;; Incrementa el rating de todas las recomandaciones cuyo libro
;; es de tematica ?tematica, y tiene el slot ?slot con valor igual que ?valor
;; El incremento de rating será de ?inc
;;---------------------------------------------------------------------------
(deffunction incrementa-rating-libros-tematica (?tematica ?slot ?valor ?inc)
  (progn$ (?f (get-fact-list)) 
    (if (eq (fact-relation ?f) recomendacion) then 
      (bind ?libro (fact-slot-value ?f libro))
      (if (and
        (eq (send ?libro get-tematica) ?tematica)
        (eq (send ?libro (sym-cat get- ?slot)) ?valor)) then 
        (incrementa-rating-recomendacion ?f ?inc)))))



;;---------------------------------------------------------------------------------------------------------
;;
;; A partir de una base de datos de libros, queremos:
;;   Recomendar un máxímo de 3 libros al usuario -una recomendación es simplemente un par <libro, rating>-,
;;   basándonos en la relación entre sus preferencias y los atributos (o 'slots') de cada libro.
;;   Esa relación influye en el valor del rating de un recomendacion, si el libro correspondiente 
;;   satisface las preferencias del usuario.
;;
;; Naturalmente, algunas preferencias tendrán más peso que otras; por ejemplo la temática del libro aporta 
;; más peso a la recomendación que la selección del formato (ebook, tapa-dura, tapa-blanda)
;;
;; La edad del lector también influye, ya que los libros para adultos no se pueden recomendar a los menores
;;
;; Hemos agrupado las preferencias en diferentes módulos:
;;   1 - MAIN
;;   2 - determina-tematica
;;   3 - preguntas-edad
;;   4 - preguntas-tematica
;;   5 - preguntas-tiempo-complejidad 
;;   6 - preguntas-formato-longitud
;;   7 - preguntas-ventas-categoria
;;   8 - preguntas-autor-libro-favoritos
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


;;-----------------------------------------------------------------------------------------
;; Inicializar las recomendaciones con rating 0
;; Regla inicial: para cada instancia de libro, crear el hecho (recomendacion libro rating)
;;-----------------------------------------------------------------------------------------
(defrule init-recomendaciones
  (declare (salience 1))
  ?libro <- (object (is-a Libro))
  =>
  (assert (recomendacion (libro ?libro) (rating 0))))


;; Pasar al modulo de seleccion de tematica
(defrule siguiente-modulo "Salta al modulo para determinar la tematica"
  (declare (salience 0))
  =>
  (printout t "-------------------------------------------------------" crlf)
  (printout t "------ Sistema Experto de Recomendación de Libros -----" crlf)
  (printout t "-------------------------------------------------------" crlf crlf)
  (assert (tematica (nombre desconocida)))    ;; poner la tematica como desconocida
  (focus determina-tematica))                 ;; pasar al siguiente modulo


;;---------------------------------------------------------------------------------
;;
;; Aqui empezamos con el modulo de para determinar la tematica del usuario 
;; 
;;
;;---------------------------------------------------------------------------------

(defmodule determina-tematica "Preguntas para determinar tematica"
  (import MAIN ?ALL)
  (export ?ALL))


;; Determinar la temática preferida del usuario
;; Seleccionar una temática hace que las puntuaciones 
;;---------------------------------------------
(defrule pregunta-tematica "Qué tematica te gusta mas? CF, Fantastica, romantica, negra"
  (declare (salience 5))
  ?t <- (tematica (nombre desconocida))
  =>
  (bind ?response
    (ask-question "¿Qué temática estás buscando?%n  1 - Fantástica%n  2 - Ciencia ficción%n  3 - Novela romántica%n  4 - Novela negra"
                  1 2 3 4))
  (if (eq ?response 1) 
    then (modify ?t (nombre fantastica))
         (incrementa-rating-libros tematica fantastica 1000))
  (if (eq ?response 2) 
    then (modify ?t (nombre ciencia-ficcion))
         (incrementa-rating-libros tematica ciencia-ficcion 1000))
  (if (eq ?response 3) 
    then (modify ?t (nombre romantica))
         (incrementa-rating-libros tematica romantica 1000))
  (if (eq ?response 4) 
    then (modify ?t (nombre negra))
         (incrementa-rating-libros tematica negra 1000)))


;; Saltar al modulo edad
;;----------------------
(defrule fin-determina-tematica "Fin pregunta eleccion tematica"
  (declare (salience 0))
  =>
;;   (printout t "Fin pregunta tematica" crlf)
  (focus preguntas-edad))



;;---------------------------------------------------------------------------------
;;
;; Modulo pregunta edad
;;
;;---------------------------------------------------------------------------------

;; Definicion del modulo
;;----------------------
(defmodule preguntas-edad "Pregunta edad"
  (import determina-tematica ?ALL)
  (export ?ALL))


;; Edad?
;; El ser menor de edad implica que no podemos recomendar libros para lectores adultos
;;------------------------------------------------------------------------------------
(defrule pregunta-edad "Pregunta la edad del lector"
  (declare (salience 10))
  =>
  (bind ?edad (pregunta-numerica "¿Qué edad tienes?" 1 100))
  (if (< ?edad 18)
    then (assert (lector-menor si))
    else (assert (lector-menor no))))



;; Saltar al modulo preguntas especiales de temática
;;--------------------------------------------------
(defrule fin-preguntas-edad "Fin pregunta edad"
  (declare (salience 0))
  =>
;;   (printout t "Fin pregunta edad" crlf)
  (focus preguntas-tematica))



;;---------------------------------------------------------------------------------
;;
;; Modulo pregunta edad
;;
;;---------------------------------------------------------------------------------

;; Definicion del modulo
;;----------------------
(defmodule preguntas-tematica "Preguntas específicas de cada temática"
  (import preguntas-edad ?ALL)
  (export ?ALL))


;;---------------------------------------------------------------------------------
;;
;; Preguntas ciencia ficcion
;;
;;---------------------------------------------------------------------------------

(defrule pregunta-ciencia-ficcion-futuros-alternativos "Preguntas especiales para fans de ciencia ficcion - futuro alternativo"
  (declare (salience 1))
  (tematica (nombre ciencia-ficcion))
  =>
  (if (si-o-no-p "¿Te gustan las novelas de futuros alternativos? (s/n)")
    then (incrementa-rating-libros-tematica ciencia-ficcion futuro-alternativo si 1)
    else (incrementa-rating-libros-tematica ciencia-ficcion futuro-alternativo no 1)))


;; Determinar viajes en el tiempo
;;-------------------------------
(defrule pregunta-viajes-temporales
  (declare (salience 10))
  (tematica (nombre ciencia-ficcion))
  =>
  (if (si-o-no-p "¿Te gustan los viajes en el tiempo? (s/n)")
    then (incrementa-rating-libros-tematica ciencia-ficcion viajes-temporales si 1)
    else (incrementa-rating-libros-tematica ciencia-ficcion viajes-temporales no 1)))


;; Determinar utopia o distopia
;;-----------------------------
(defrule pregunta-utopia-distopia
  (declare (salience 10))
  (tematica (nombre ciencia-ficcion))
  =>
  (bind ?response (ask-question "¿Utopía o distopía?%n1 - Utopía%n2 - Distopía%n3 - Ninguna" 
                                1 2 3))
    (if (eq ?response 1) then (incrementa-rating-libros-tematica ciencia-ficcion utopia-distopia utopia 1))
    (if (eq ?response 2) then (incrementa-rating-libros-tematica ciencia-ficcion utopia-distopia distopia 1))
    (if (eq ?response 3) then (incrementa-rating-libros-tematica ciencia-ficcion utopia-distopia ninguna 1)))



;;---------------------------------------------------------------------------------
;;
;; Preguntas fantastica
;;
;;---------------------------------------------------------------------------------

;; Determinar mundos fantásticos
;;------------------------------
(defrule pregunta-mundos-fantasticos
  (declare (salience 10))
  (tematica (nombre fantastica))
  =>
  (if (si-o-no-p "¿Te gustan los mundos fantásticos? (s/n)")
    then (incrementa-rating-libros-tematica fantastica mundos-fantasticos si 1)))


;; Determinar raza preferida
;; enanos elfos orcos humanos otras
;;---------------------------------
(defrule pregunta-raza-preferida
  (declare (salience 10))
  (tematica (nombre fantastica))
  =>
  (bind ?response
    (ask-question "¿Cuál de estas razas prefieres?%n1 - Enanos%n2 - Elfos%n3 - Orcos%n4 - Humanos%n5 - Otras"
                  1 2 3 4 5))
    (if (eq ?response 1) then (incrementa-rating-libros-tematica fantastica raza enanos 1))
    (if (eq ?response 2) then (incrementa-rating-libros-tematica fantastica raza elfos 1))
    (if (eq ?response 3) then (incrementa-rating-libros-tematica fantastica raza orcos 1))
    (if (eq ?response 4) then (incrementa-rating-libros-tematica fantastica raza humanos 1))
    (if (eq ?response 5) then (incrementa-rating-libros-tematica fantastica raza otras 1)))



;;---------------------------------------------------------------------------------
;;
;; Preguntas romantica
;;
;;---------------------------------------------------------------------------------

;; Deterinar el tipo de romance
;; historico contemporaneo fantastico
;;-----------------------------------
(defrule pregunta-tipo-romance
  (declare (salience 10))
  (tematica (nombre romantica))
  =>
   (bind ?response
      (ask-question "¿Qué tipo de romance prefieres?%n1 - Histórico%n2 - Contemporáneo%n3 - Fantástico" 
                    1 2 3))
    (if (eq ?response 1) then (incrementa-rating-libros-tematica romantica tipo-romance historico 1))
    (if (eq ?response 2) then (incrementa-rating-libros-tematica romantica tipo-romance contemporaneo 1))
    (if (eq ?response 3) then (incrementa-rating-libros-tematica romantica tipo-romance fantastico 1)))


;; Determinar muy sensuales
;; Preguntar sólo si es mayor de edad
;;-----------------------------------
(defrule pregunta-muy-sensuales
  (declare (salience 10))
  (tematica (nombre romantica))
  (lector-menor no)
  =>
  (if (si-o-no-p "¿Te gustan las novelas románticas muy sensuales? (s/n)")
    then (incrementa-rating-libros-tematica romantica muy-sensual si 1)
    else (incrementa-rating-libros-tematica romantica muy-sensual no 1)))



;;---------------------------------------------------------------------------------
;;
;; Preguntas negra
;;
;;---------------------------------------------------------------------------------

;; Determinar accion
;;------------------
(defrule pregunta-accion
  (declare (salience 10))
  (tematica (nombre negra))
  =>
  (if (si-o-no-p "¿Te gusta que haya mucha acción? (s/n)")
    then (incrementa-rating-libros-tematica negra accion si 1)
    else (incrementa-rating-libros-tematica negra accion no 1)))


;; Determinar protagonistas
;; detectives mafiosos juzgados
;;-----------------------------
(defrule pregunta-protagonistas
   (declare (salience 10))
  (tematica (nombre negra))
   =>
   (bind ?response
      (ask-question "¿Qué tipo de historia prefieres?%n1 - Detectives%n2 - Mafiosos%n3 - Juzgados"
                    1 2 3))
    (if (eq ?response 1) then (incrementa-rating-libros-tematica negra protagonistas detectives 1))
    (if (eq ?response 2) then (incrementa-rating-libros-tematica negra protagonistas mafiosos 1))
    (if (eq ?response 3) then (incrementa-rating-libros-tematica negra protagonistas juzgados 1)))


;; Fin preguntas especificas tematica
;;-----------------------------------
(defrule fin-preguntas-tematica "Fin preguntas específicas de temática"
  (declare (salience 0))
  =>
;;   (printout t "Fin preguntas temática" crlf)
  (focus preguntas-tiempo-complejidad))



;;---------------------------------------------------------------------------------
;;
;; Modulo preguntas tiempo y complejidad
;; Aquí descubrimos cuánto puede leer el dia el usuario
;; y si las tramas que le gustan (o convienen) son complejas o no
;;
;;---------------------------------------------------------------------------------

(defmodule preguntas-tiempo-complejidad "Preguntas tiempo y complejidad"
  (import preguntas-tematica ?ALL)
  (export ?ALL))



;; Determinar tiempo de lectura
;;-----------------------------
(defrule pregunta-tiempo-lectura
  (declare (salience 10))
  (not (tiempo-lectura ?p))
  =>
  (if (si-o-no-p "¿Lees más de una hora al día? (s/n)")
    then (assert (tiempo-lectura si))
    else (assert (tiempo-lectura no))))


;; si leer >1h ^ difiicl de leer => libro.tipo-lector = avanzado
;; si leer <1h => libro.tipo-lector = casual
;; fácil de leer => libro.tipo-lector = casual

(defrule trata-tiempo-lectura
  (declare (salience 10))
  (tiempo-lectura no)
  =>
  (incrementa-rating-libros tipo-lector casual 1))


;; Determinar si le gustan los libros complejos
;;---------------------------------------------
(defrule pregunta-complejidad
  (declare (salience 10))
  (tiempo-lectura si)
  (not (complejidad ?p))
  =>
  (if (si-o-no-p "¿Te gustan las tramas complejas? (s/n)")
    then (assert (complejidad si))
    else (assert (complejidad no))))


(defrule trata-complejidad 
  (declare (salience 10))
  (tiempo-lectura si)
  (complejidad ?p)
  =>
  (if (eq ?p si)
    then (incrementa-rating-libros tipo-lector avanzado 1)
    else (incrementa-rating-libros tipo-lector casual 1)))


;; Fin preguntas tiempo complejidad
;;---------------------------------
(defrule fin-preguntas-tiempo-complejidad "Fin preguntas tiempo complejidad"
  (declare (salience 0))
  =>
;;   (printout t "Fin preguntas tiempo complejidad" crlf)
  (focus preguntas-formato-longitud))



;;---------------------------------------------------------------------------------
;;
;; Modulo preguntas formato y longitud
;; Aquí descubrimos qué formato de libro és el mejor para el usuario
;; además de la longitud más adecuada a sus hábitos y preferencias
;;
;;---------------------------------------------------------------------------------

(defmodule preguntas-formato-longitud "Preguntas formato y longitud"
  (import preguntas-tiempo-complejidad ?ALL)
  (export ?ALL))


;; Determinar donde lee Metro/Casa/Descanso del trabajo
;; Esto influye en el formato y la longitud del libro
;; si lee en transporte publico, tapa blanda, longitud libro indeterminada
;; si lee en casa, tapa dura, longitud libro indeterminada
;; si lee en el trabajo, tapa blanda, longitud libro corta
;;--------------------------------------------------------------------------------
(defrule determine-donde-leer
  (declare (salience 10))
  =>
  (bind ?response
    (ask-question "¿Dónde sueles leer?%n1 - Transporte público%n2 - Casa%n3 - Descansos del trabajo"
                  1 2 3))
    (if (eq ?response 1) then 
      (incrementa-rating-libros formato tapa-blanda 1)
      (assert (pregunta longitud)))
    (if (eq ?response 2) then 
      (incrementa-rating-libros formato tapa-dura 1)
      (assert (pregunta longitud)))
    (if (eq ?response 3) then 
      (incrementa-rating-libros formato tapa-blanda 1)
      (incrementa-rating-libros longitud corto 1)))


;; Si no estamos seguros de si prefiere libros largos o cortos, preguntar
;;-----------------------------------------------------------------------
(defrule pregunta-longitud
 (declare (salience 10))
 (pregunta longitud)
 =>
 (if (si-o-no-p "¿Prefieres los libros largos? (s/n)")
    then (incrementa-rating-libros longitud largo 1)
    else (incrementa-rating-libros longitud corto 1)))


;; Determinar si tiene ebook
;;--------------------------
(defrule pegunta-tiene-ebook
  (declare (salience 5))
  =>
  (if (si-o-no-p "¿Tienes ebook? (s/n)")
    then (incrementa-rating-libros formato ebook 1)))


;; Fin preguntas formato y longitud
;;---------------------------------
(defrule fin-preguntas-formato-longitud "Fin preguntas formato longitud"
  (declare (salience 0))
  =>
;;   (printout t "Fin preguntas formato longitud" crlf)
  (focus preguntas-ventas-categoria))



;;--------------------------------------------------------------------------------
;;
;; Modulo preguntas ventas y categoría
;; Con ventas buscamos saber si el usuario prefiere los bestsellers
;; Con categoría el usuario nos informa si le gustan las obras clásicas, o de moda
;; (o no le importa esta distinción)
;;
;;--------------------------------------------------------------------------------

(defmodule preguntas-ventas-categoria "Preguntas ventas categoria"
  (import preguntas-formato-longitud ?ALL)
  (export ?ALL))


;; Determinar best seller
;;-----------------------
(defrule pregunta-best-seller
  (declare (salience 10))
  =>
  (if (si-o-no-p "¿Te gustan los best-sellers? (s/n)")
    then (incrementa-rating-libros best-seller si 1)))



;; Determinar tipo de libro
;;-------------------------
(defrule pregunta-tipo-libro
  (declare (salience 10))
  =>
  (bind ?response
    (ask-question "¿Qué tipo de libro te gusta?%n1 - Clásico%n2 - De moda%n3 - Indiferente"
                  1 2 3))
  (if (eq ?response 1) then (incrementa-rating-libros tipo-libro clasico 1))
  (if (eq ?response 2) then (incrementa-rating-libros tipo-libro de-moda 1)))


;; Fin preguntas ventas y categoría
;;---------------------------------
(defrule fin-preguntas-ventas-categoria "Fin preguntas ventas categoria"
  (declare (salience 0))
  =>
;;   (printout t "Fin preguntas ventas categoria" crlf)
  (focus preguntas-autor-libro-favoritos))



;;--------------------------------------------------------------------------------
;;
;; Modulo preguntas autor y libro favoritos
;; Sabiendo su autor favorito podemos dar más peso a las recomendaciones de
;; libros de ese autor
;; Y a partir de su libro preferido, podemos dar más peso a las recomendaciones de
;; otros libros similares
;;
;;--------------------------------------------------------------------------------

(defmodule preguntas-autor-libro-favoritos "Preguntas ventas categoria"
  (import preguntas-ventas-categoria ?ALL)
  (export ?ALL))


;; Determinar el autor preferido
;; El peso del autor es un poco mayor
;;-----------------------------------
(defrule pregunta-tiene-autor-preferido
  (declare (salience 5))
  =>
  (if (si-o-no-p "¿Tienes un autor preferido? (s/n)")
    then (assert (pregunta autor))))

(defrule pregunta-autor-preferido
  (declare (salience 5))
  (pregunta autor)
  =>
  (printout t crlf "¿Quién es tu autor preferido?" crlf)
  (incrementa-rating-libros autor (readline) 3))


;; Determinar el libro preferido
;; El peso del libro es un poco mayor
;; Intentaremos recomendar libros similares al preferido
;;------------------------------------------------------
(defrule pregunta-tiene-libro-preferido
  (declare (salience 5))
  =>
  (if (si-o-no-p "¿Tienes un libro preferido? (s/n)")
    then (assert (pregunta libro))))

(defrule pregunta-libro-preferido
  (declare (salience 5))
  (pregunta libro)
  =>
  (printout t crlf "¿Cuál es tu libro preferido?" crlf)
  (incrementa-rating-libros-lista libros-similares (readline) 3))



;; Fin preguntas autor libro
;;--------------------------
(defrule fin-preguntas-autor-libro-favoritos "Pasa a imprimir las recomendaciones"
  (declare (salience 0))
  =>
;;   (printout t "Fin preguntas autor y libro favoritos" crlf)
;;   (printout t "Pasamos a imprimir las recomendaciones" crlf)
  (focus imprime-recomendaciones))



;;---------------------------------------------------------------------------------
;;
;; Modulo imprimir recomendaciones
;;
;;---------------------------------------------------------------------------------

(defmodule imprime-recomendaciones "Imprimir los 3 libros mejor recomendados"
  (import preguntas-autor-libro-favoritos ?ALL)
  (export ?ALL))


;; arranca estableciendo el hecho print-sorted
;;--------------------------------------------
(defrule print
  (declare (salience 10))
  =>
;;   (printout t "Imprime solucion" crlf)
  (printout t crlf "Libros recomendados" crlf "-------------------" crlf)
  (assert (print-sorted)))


;; marca todo libro como unprinted (si es apropiado para la edad del lector)
;; más tarde imprimiremos los libros de las recomendaciones unprinted con mayor rating
;;------------------------------------------------------------------------------------
(defrule assert-unprinted "Asserts each item that needs to be printed."
  (declare (salience 10))
  (print-sorted)
  (lector-menor ?u)
  (recomendacion (libro ?l))
  =>
  ;; no permitir que a los menores les llegue una recomendacion de un libro para adultos
  ;; edad (todos-publicos adulto)
  (if (or (eq ?u no) 
          (eq (send ?l get-edad) todos-publicos))
    then (assert (unprinted ?l))))


;; elimina el hecho print-sorted para iniciar la salida
;;-----------------------------------------------------
(defrule retract-print-sorted "Retract print-sorted after all items enumerated."
  (declare (salience 0))
  ?f <- (print-sorted)
  =>
  (retract ?f))

;; Imrimirá los 3 libros mejor recomendados
;;-----------------------------------------
(defrule print-greatest "Prints the unprinted item with the greatest rating."
  (declare (salience 0))
  (not (print-sorted))
  ?u <- (unprinted ?libro)
  (recomendacion (libro ?libro) (rating ?rating))                                               ;; la recom. que corresponde al libro
  (forall (and (unprinted ?l) (recomendacion (libro ?l) (rating ?r))) (test (<= ?r ?rating)))   ;; tiene rating mayor que las restantes
  =>
  (retract ?u)                                                                                  ;; desmarcar libro como unprinted
  (if (> 3 ?*recomendacionesImprimidas*) then                                                   ;; imprime si todavia no llevamos 3
    ;; imprimir bien el libro
    (printout t "#" (+ 1 ?*recomendacionesImprimidas*) " - " (send ?libro get-titulo) ", de " (send ?libro get-autor)
;;  " tiene puntuacion = " ?rating crlf))
      crlf))
  (bind ?*recomendacionesImprimidas* (+ 1 ?*recomendacionesImprimidas*)))                       ;; ++ el contador de libros impresos
  




