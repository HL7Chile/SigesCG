Alias: $Comunas = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL
Alias: $Provincias = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL
Alias: $Regiones = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL
Alias: $Sexo-Nac = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSSexoListadoDeis


Alias: $Especialidades = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSEspecialidadesDeisCL
Alias: $Razones = https://fonasa.cl/razones
Alias: $Sospecha = https://fonasa.cl/sospecha
Alias: $Examen = https://fonasa.cl/examen
Alias: $Estado-Caso = https://fonasa.cl/estadocaso
Alias: $Marca = https://hl7chile.cl/fhir/ig/sigescg/Codesystem/CSMArca
Alias: $Marca = https://hl7chile.cl/fhir/ig/sigescg/Codesystem/CSMArca
Alias: $Exam = https://hl7chile.cl/fhir/ig/sigescg/Codesystem/CSExamenes
Alias: $Prevision = https://hl7chile.cl/fhir/ig/sigescg/Codesystem/CSPrevision
Alias: $ProbSalud = https://hl7chile.cl/fhir/ig/sigescg/Codesystem/CSProbSalud
Alias: $TipoDoc = https://hl7chile.cl/fhir/ig/sigescg/CodeSystem/CSTipoDoc
Alias: $Prestacion = https://hl7chile.cl/fhir/ig/sigescg/CodeSystem/CSPrestacion
Alias: $ReferidoPor = https://hl7chile.cl/fhir/ig/sigescg/CodeSystem/CSDerivadoPara
Alias: $Opciones = https://hl7chile.cl/fhir/ig/sigescg/CodeSystem/CSOpcionesCierre

Instance: SolicitudInter
InstanceOf: DatosSigesCG 
Title: "Ejemplo formulario de Solicitud de Interconsulta"
Description: "Ejemplo de datos para la solicitud de una interconsulta  (Caso 1)"

Usage: #example

* extension[TipoDoc].url = "https://hl7chile.cl/fhir/ig/sigescg/StructureDefinition/TipoDoc"
* extension[TipoDoc].valueCodeableConcept = $TipoDoc#1 "Solicitud de interconsulta SIC"

* identifier.value = "FFBA223B"
* identifier.system = "http://fonasa.cl/verificacion/identificador"
* questionnaire = "https://hl7chile.cl/fhir/ig/sigescg/Questionnaire/SolicitudI"
* status = #completed

* authored = "2024-10-16T14:30:00Z"


* item[0].linkId = "datosPaciente"


* item[=].item[0].linkId = "identificacionPac"




* item[=].item[=].item[0].linkId = "runPac"
* item[=].item[=].item[=].answer.valueString = "66.666.666"
* item[=].item[=].item[+].linkId = "verificador"
* item[=].item[=].item[=].answer.valueString = "k"

* item[=].item[+].linkId = "nombreRegistrado"


* item[=].item[=].item[0].linkId = "primerApellido"
* item[=].item[=].item[=].answer.valueString = "EjemploAp"
* item[=].item[=].item[+].linkId = "segundoApellido"
* item[=].item[=].item[=].answer.valueString = "EjemploSegundo"
* item[=].item[=].item[+].linkId = "nombresPac"
* item[=].item[=].item[=].answer[0].valueString = "nombre1"
* item[=].item[=].item[=].answer[+].valueString = "nombre2"

* item[=].item[+].linkId = "direccionPac"


* item[=].item[=].item[0].linkId = "calleNumeroDirPac"
* item[=].item[=].item[=].answer.valueString = "Calle mia, 666, casa C"

* item[=].item[=].item[+].linkId = "communaDirPac"
* item[=].item[=].item[=].answer.valueCoding = $Comunas#13402 "Buin"


* item[=].item[=].item[+].linkId = "provinciaDirPac"
* item[=].item[=].item[=].answer.valueCoding = $Provincias#131 "Santiago"


* item[=].item[=].item[+].linkId = "regionDirPac"
* item[=].item[=].item[=].answer.valueCoding = $Regiones#13 "Metropolitana de Santiago"


* item[=].item[+].linkId = "datoContactoPac"


* item[=].item[=].item[0].linkId = "emailPac"
* item[=].item[=].item[=].answer.valueString = "yo@yo.cl"

* item[=].item[=].item[+].linkId = "numeroTelPac"
* item[=].item[=].item[=].answer.valueString = "+56 9666666"

* item[=].item[+].linkId = "datosDemogAdic"


* item[=].item[=].item[0].linkId = "sexoNacimiento"
* item[=].item[=].item[=].answer.valueCoding = $Sexo-Nac#93 "No Informado"


* item[=].item[=].item[+].linkId = "fechaNacimiento"
* item[=].item[=].item[=].answer.valueDate = "1980-05-22"

* item[=].item[=].item[+].linkId = "edadPaciente"
* item[=].item[=].item[=].answer.valueInteger = 35

* item[=].item[+].linkId = "garantiaPac"

* item[=].item[=].item[0].linkId = "codigoMarca"
* item[=].item[=].item[=].answer.valueCoding = $Marca#01 "PRAIS"

* item[=].item[=].item[+].linkId = "creditacionPac"
* item[=].item[=].item[=].answer.valueCoding = $Prevision#1 "FONASA"

* item[+].linkId = "solicitudInter"


* item[=].item[0].linkId = "fechas"


* item[=].item[=].item[0].linkId = "fechaCreacionCaso"
* item[=].item[=].item[=].answer.valueDate = "2024-10-16"

* item[=].item[=].item[+].linkId = "horaCreacionCaso"
* item[=].item[=].item[=].answer.valueTime = "16:00:00"

* item[=].item[+].linkId = "establecimientos"


* item[=].item[=].item[0].linkId = "servicioSaludOrigen"
* item[=].item[=].item[=].answer.valueString = "Servicio de Salud Metropolitano Occidente"

* item[=].item[=].item[+].linkId = "establecimientoOrigen"
* item[=].item[=].item[=].answer.valueString = "Hospital Bueno"

* item[=].item[=].item[+].linkId = "servicioSaludDestino"
* item[=].item[=].item[=].answer.valueString = "Servicio de Salud Metropolitano Oriente"

* item[=].item[=].item[+].linkId = "establecimientoDestino"
* item[=].item[=].item[=].answer.valueString = "Hospital Más Bueno"



* item[=].item[+].linkId = "especialidades"


* item[=].item[=].item[0].linkId = "especialidadOrigen"
* item[=].item[=].item[=].answer.valueCoding.system = $Especialidades#01 "Anatomía Patológica"


* item[=].item[=].item[+].linkId = "especialidadDestino"
* item[=].item[=].item[=].answer.valueCoding = $Especialidades#45 "Oncología Médica"


* item[=].item[+].linkId = "antecedentes"


* item[=].item[=].item[0].linkId = "referidoPor"
* item[=].item[=].item[=].answer.valueCoding.system = $Razones#05 "Otro"

* item[=].item[=].item[+].linkId = "referidoPorOtro"
* item[=].item[=].item[=].answer.valueString = "Cancer inespecífico"

* item[=].item[=].item[+].linkId = "sospechaGes"
* item[=].item[=].item[=].answer.valueBoolean = true


* item[=].item[=].item[+].linkId = "hipotesisDiagnostica"
* item[=].item[=].item[=].answer.valueString = "Cancer Gástrico"

* item[=].item[=].item[+].linkId = "fundamentoDiagnostico"
* item[=].item[=].item[=].answer.valueString = "Resultado examenes"

* item[=].item[+].linkId = "procedimientos"


* item[=].item[=].item[0].linkId = "examenesRealizados"
* item[=].item[=].item[=].answer.valueString = "Examen 1"


//* item[=].item[4].item[0].answer[1].valueCoding.system = $Examen#33 "ex 2"


* item[=].item[+].linkId = "IdentificadoresCaso"


* item[=].item[=].item[0].linkId = "numeroFolio"
* item[=].item[=].item[=].answer.valueString = "F32"


* item[=].item[=].item[+].linkId = "codEstadoCaso"
* item[=].item[=].item[=].answer.valueCoding.system = $Estado-Caso#01 "progreso"


* item[+].linkId = "profesionalNotificador"


* item[=].item[0].linkId = "identificadorProf"


* item[=].item[=].item[0].linkId = "runPrest"
* item[=].item[=].item[=].answer.valueString = "99.999.999"

* item[=].item[=].item[+].linkId = "verificadorPrest"
* item[=].item[=].item[=].answer.valueString = "4"
  
* item[=].item[+].linkId = "nombreRegistradoPrest"


* item[=].item[=].item[0].linkId = "primerApellidoPrest"
* item[=].item[=].item[=].answer.valueString = "Prestador"

* item[=].item[=].item[+].linkId = "segundoApellidoPrest"
* item[=].item[=].item[=].answer.valueString = "2oPrestador"

* item[=].item[=].item[+].linkId = "nombresPrest"
* item[=].item[=].item[=].answer.valueString = "El"

    




Instance: Caso2
InstanceOf: DatosSigesCG
Title: "Ejemplo de formulario de Atención Especialidad (Prestación Otorgada)"
Description: "Ejemplo de datos para la prestación otorgada (Caso 2)"

Usage: #example

* extension[TipoDoc].url = "https://hl7chile.cl/fhir/ig/sigescg/StructureDefinition/TipoDoc"
* extension[TipoDoc].valueCodeableConcept = $TipoDoc#1 "Solicitud de interconsulta SIC"

* identifier.value = "FFBA223B"
* identifier.system = "http://fonasa.cl/verificacion/identificador"
* questionnaire = "https://hl7chile.cl/fhir/ig/sigescg/Questionnaire/NotiAtenEsp"
* status = #completed

* authored = "2024-10-16T14:30:00Z"


* item[0].linkId = "datosPaciente"


* item[=].item[0].linkId = "identificacionPac"




* item[=].item[0].item[0].linkId = "runPac"
* item[=].item[=].item[=].answer.valueString = "66.666.666"
* item[=].item[=].item[+].linkId = "verificador"
* item[=].item[=].item[=].answer.valueString = "k"

* item[=].item[+].linkId = "nombreRegistrado"


* item[=].item[=].item[0].linkId = "primerApellido"
* item[=].item[=].item[=].answer.valueString = "EjemploAp"
* item[=].item[=].item[+].linkId = "segundoApellido"
* item[=].item[=].item[=].answer.valueString = "EjemploSegundo"
* item[=].item[=].item[+].linkId = "nombresPac"
* item[=].item[=].item[=].answer[0].valueString = "nombre1"
* item[=].item[=].item[=].answer[+].valueString = "nombre2"

* item[=].item[+].linkId = "direccionPac"


* item[=].item[=].item[0].linkId = "calleNumeroDirPac"
* item[=].item[=].item[=].answer.valueString = "Calle mia, 666, casa C"

* item[=].item[=].item[+].linkId = "communaDirPac"
* item[=].item[=].item[=].answer.valueCoding = $Comunas#13402 "Buin"


* item[=].item[=].item[+].linkId = "provinciaDirPac"
* item[=].item[=].item[=].answer.valueCoding = $Provincias#131 "Santiago"


* item[=].item[=].item[+].linkId = "regionDirPac"
* item[=].item[=].item[=].answer.valueCoding = $Regiones#13 "Metropolitana de Santiago"


* item[=].item[+].linkId = "datoContactoPac"


* item[=].item[=].item[0].linkId = "emailPac"
* item[=].item[=].item[=].answer.valueString = "yo@yo.cl"

* item[=].item[=].item[+].linkId = "numeroTelPac"
* item[=].item[=].item[=].answer.valueString = "+56 9666666"

* item[=].item[+].linkId = "datosDemogAdic"


* item[=].item[=].item[0].linkId = "sexoNacimiento"
* item[=].item[=].item[=].answer.valueCoding = $Sexo-Nac#93 "No Informado"


* item[=].item[=].item[+].linkId = "fechaNacimiento"
* item[=].item[=].item[=].answer.valueDate = "1980-05-22"

* item[=].item[=].item[+].linkId = "edadPaciente"
* item[=].item[=].item[=].answer.valueInteger = 35


* item[=].item[+].linkId = "IdentificadorProblema"


* item[=].item[=].item[0].linkId = "caso"
* item[=].item[=].item[=].answer.valueString = "FFBA223B"


* item[+].linkId = "Prestacion"

* item[=].item[0].linkId = "origenPrestacion"
* item[=].item[=].item[0].linkId = "nombreEstablecimientoOtorga"
* item[=].item[=].item[=].answer.valueString = "Hospital XXXX"


* item[=].item[=].item[+].linkId = "nombreServicioSaludOtorga"
* item[=].item[=].item[=].answer.valueString = "Servicio de Salud YYYYY"



* item[=].item[+].linkId = "fechas"
* item[=].item[=].item[0].linkId = "fechaInicio"
* item[=].item[=].item[=].answer.valueDate = "2024-11-01"


* item[=].item[=].item[+].linkId = "horaInicio"
* item[=].item[=].item[=].answer.valueTime = "15:24:33"

* item[=].item[=].item[+].linkId = "fechaFin"
* item[=].item[=].item[=].answer.valueDate = "2024-11-15"

* item[=].item[+].linkId = "tipoPrest"
* item[=].item[=].item[0].linkId = "nombrePrestacion"
* item[=].item[=].item[=].answer.valueString = "Prestación AAA"

* item[=].item[=].item[+].linkId = "codPrestacion"
* item[=].item[=].item[=].answer.valueCoding = $Prestacion#1 "Prestacion1"




Instance: Caso3
InstanceOf: DatosSigesCG
Title: "Ejemplo formulario de solicitud de endoscopía (Orden de Atención)"
Description: "Ejemplo de datos para la creación de un formulario  (Caso 3)"

Usage: #example

* extension[TipoDoc].url = "https://hl7chile.cl/fhir/ig/sigescg/StructureDefinition/TipoDoc"
* extension[TipoDoc].valueCodeableConcept = $TipoDoc#1 "Solicitud de interconsulta SIC"

* identifier.value = "FFBA223B"
* identifier.system = "http://fonasa.cl/verificacion/identificador"
* questionnaire = "https://hl7chile.cl/fhir/ig/sigescg/Questionnaire/SolEndoscop"
* status = #completed

* authored = "2024-10-16T14:30:00Z"

* item[0].linkId = "datosPaciente"


* item[=].item[0].linkId = "identificacionPac"




* item[=].item[=].item[0].linkId = "runPac"
* item[=].item[=].item[=].answer.valueString = "66.666.666"
* item[=].item[=].item[+].linkId = "verificador"
* item[=].item[=].item[=].answer.valueString = "k"
* item[=].item[+].linkId = "nombreRegistrado"


* item[=].item[=].item[0].linkId = "primerApellido"
* item[=].item[=].item[=].answer.valueString = "EjemploAp"
* item[=].item[=].item[+].linkId = "segundoApellido"
* item[=].item[=].item[=].answer.valueString = "EjemploSegundo"
* item[=].item[=].item[+].linkId = "nombresPac"
* item[=].item[=].item[=].answer[0].valueString = "nombre1"
* item[=].item[=].item[=].answer[+].valueString = "nombre2"

* item[+].linkId = "profesionalSolicitante"


* item[=].item[0].linkId = "identificadorProf"


* item[=].item[=].item[0].linkId = "runPrest"
* item[=].item[=].item[=].answer.valueString = "99.999.999"

* item[=].item[=].item[+].linkId = "verificadorPrest"
* item[=].item[=].item[=].answer.valueString = "4"
  
* item[=].item[+].linkId = "nombreRegistradoPrest"


* item[=].item[=].item[0].linkId = "primerApellidoPrest"
* item[=].item[=].item[=].answer.valueString = "Prestador"

* item[=].item[=].item[+].linkId = "segundoApellidoPrest"
* item[=].item[=].item[=].answer.valueString = "2oPrestador"

* item[=].item[=].item[+].linkId = "nombresPrest"
* item[=].item[=].item[=].answer.valueString = "El"


* item[+].linkId = "SolicitudAtencionPrest"
* item[=].item[+].linkId = "tipoPrestSol"

* item[=].item[=].item[0].linkId = "nombrePrestacion"
* item[=].item[=].item[=].answer.valueString = "Prestacion1"

* item[=].item[=].item[+].linkId = "codPrestacion"
* item[=].item[=].item[=].answer.valueCoding = $Prestacion#1 "Prestacion1"

* item[=].item[+].linkId = "fechaSol"

* item[=].item[=].item[0].linkId = "fechaSolOrd"
* item[=].item[=].item[=].answer.valueDate = "2024-10-11"

* item[=].item[=].item[+].linkId = "horaSolOrd"
* item[=].item[=].item[=].answer.valueTime = "12:15:00"

* item[=].item[+].linkId = "origenDest"
* item[=].item[=].item[0].linkId = "nombreServicioSaludOrg"
* item[=].item[=].item[=].answer.valueString = "Servicio 1"
* item[=].item[=].item[+].linkId = "nombreEstablecimientoOrg"
* item[=].item[=].item[=].answer.valueString = "Establecimiento 1"
* item[=].item[=].item[+].linkId = "nombreServicioSaludDestino"
* item[=].item[=].item[=].answer.valueString = "Servicio 2"
* item[=].item[=].item[+].linkId = "nombreEstablecimientoDestino"
* item[=].item[=].item[=].answer.valueString = "Establecimiento 2"

* item[=].item[+].linkId = "razonDeriv"
* item[=].item[=].item[0].linkId = "referidoPor"
* item[=].item[=].item[=].answer.valueCoding = $ReferidoPor#1 "Confirmación Diagnóstica"
* item[=].item[=].item[+].linkId = "hipotesisDiagnostica"
* item[=].item[=].item[=].answer.valueString = "Hipótesis 1"


Instance: Caso4
InstanceOf: DatosSigesCG
Title: "Ejemplo formulario de notificación de informe proceso diagnóstico"
Description: "Ejemplo de datos para la creación de un formulario  (Caso 4)"

Usage: #example

* extension[TipoDoc].url = "https://hl7chile.cl/fhir/ig/sigescg/StructureDefinition/TipoDoc"
* extension[TipoDoc].valueCodeableConcept = $TipoDoc#1 "Solicitud de interconsulta SIC"

* identifier.value = "FFBA223B"
* identifier.system = "http://fonasa.cl/verificacion/identificador"
* questionnaire = "https://hl7chile.cl/fhir/ig/sigescg/Questionnaire/ProsDiag"
* status = #completed

* authored = "2024-10-16T14:30:00Z"

* item[0].linkId = "datosPaciente"


* item[=].item[0].linkId = "identificacionPac"




* item[=].item[0].item[0].linkId = "runPac"
* item[=].item[0].item[0].answer.valueString = "66.666.666"
* item[=].item[0].item[+].linkId = "verificador"
* item[=].item[0].item[=].answer.valueString = "k"

* item[=].item[+].linkId = "nombreRegistrado"


* item[=].item[=].item[0].linkId = "primerApellido"
* item[=].item[=].item[0].answer.valueString = "EjemploAp"
* item[=].item[=].item[1].linkId = "segundoApellido"
* item[=].item[=].item[1].answer.valueString = "EjemploSegundo"
* item[=].item[=].item[2].linkId = "nombresPac"
* item[=].item[=].item[2].answer[0].valueString = "nombre1"
* item[=].item[=].item[2].answer[+].valueString = "nombre2"

* item[+].linkId = "rofesionalAtiende"


* item[=].item[0].linkId = "identificadorProf"


* item[=].item[=].item[0].linkId = "runPrest"
* item[=].item[=].item[0].answer.valueString = "99.999.999"

* item[=].item[=].item[1].linkId = "verificadorPrest"
* item[=].item[=].item[1].answer.valueString = "4"
  
* item[=].item[+].linkId = "nombreRegistradoPrest"


* item[=].item[=].item[0].linkId = "primerApellidoPrest"
* item[=].item[=].item[=].answer.valueString = "Prestador"

* item[=].item[=].item[+].linkId = "segundoApellidoPrest"
* item[=].item[=].item[=].answer.valueString = "2oPrestador"

* item[=].item[=].item[+].linkId = "nombresPrest"
* item[=].item[=].item[=].answer.valueString = "El"

* item[+].linkId = "NotiInform"

* item[=].item[+].linkId = "identificador"
* item[=].item[=].item[0].linkId = "numeroFolio"
* item[=].item[=].item[=].answer.valueString = "AD23111"


* item[=].item[+].linkId = "fechas"

* item[=].item[=].item[0].linkId = "fechaCreacion"
* item[=].item[=].item[=].answer.valueDate = "2024-10-15"

* item[=].item[=].item[+].linkId = "horaCreacion"
* item[=].item[=].item[=].answer.valueTime = "10:00:00"


* item[=].item[+].linkId = "organizacion"
* item[=].item[=].item[0].linkId = "nombreServicioSalud"
* item[=].item[=].item[=].answer.valueString = "Servicio 1"
* item[=].item[=].item[+].linkId = "nombreEstablecimiento"
* item[=].item[=].item[=].answer.valueString = "Establecimiento 1"


* item[=].item[+].linkId = "problemaDiag"
* item[=].item[=].item[0].linkId = "problemaSalud"
* item[=].item[=].item[=].answer.valueCoding = $ProbSalud#27 "CÁNCER GÁSTRICO"
* item[=].item[=].item[+].linkId = "confDiag"
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "fundDiag"
* item[=].item[=].item[=].answer.valueString = "Examenes realizados confirman sospecha"
* item[=].item[=].item[+].linkId = "Diagostico"
* item[=].item[=].item[=].answer.valueString = "Cáncer Gástrico"

* item[=].item[+].linkId = "tratamiento"
* item[=].item[=].item[0].linkId = "tratamientoInd"
* item[=].item[=].item[=].answer.valueString = "Tratamiento 1"
* item[=].item[=].item[+].linkId = "indicaciones"
* item[=].item[=].item[=].answer.valueString = "Indicaciones 1"


Instance: Caso5
InstanceOf: DatosSigesCG
Title: "Ejemplo formulario de Notificación de Cierre de Caso o Exepción de garantías"
Description: "Ejemplo de datos para la creación de un formulario  (Caso 5)"

Usage: #example

* extension[TipoDoc].url = "https://hl7chile.cl/fhir/ig/sigescg/StructureDefinition/TipoDoc"
* extension[TipoDoc].valueCodeableConcept = $TipoDoc#1 "Solicitud de interconsulta SIC"

* identifier.value = "FFBA223A"
* identifier.system = "http://fonasa.cl/verificacion/identificador"
* questionnaire = "https://hl7chile.cl/fhir/ig/sigescg/Questionnaire/Etapificacion"
* status = #completed

* authored = "2024-12-19T14:30:00Z"

* item[0].linkId = "datosPaciente"


* item[=].item[0].linkId = "identificacionPac"




* item[=].item[0].item[0].linkId = "runPac"
* item[=].item[0].item[0].answer.valueString = "66.666.666"
* item[=].item[0].item[+].linkId = "verificador"
* item[=].item[0].item[=].answer.valueString = "k"

* item[=].item[+].linkId = "nombreRegistrado"


* item[=].item[=].item[0].linkId = "primerApellido"
* item[=].item[=].item[0].answer.valueString = "EjemploAp"
* item[=].item[=].item[1].linkId = "segundoApellido"
* item[=].item[=].item[1].answer.valueString = "EjemploSegundo"
* item[=].item[=].item[2].linkId = "nombresPac"
* item[=].item[=].item[2].answer[0].valueString = "nombre1"
* item[=].item[=].item[2].answer[+].valueString = "nombre2"


* item[+].linkId = "datosCierre"
* item[=].item[0].linkId = "fechas"

* item[=].item[=].item[0].linkId = "fechaCierre"
* item[=].item[=].item[=].answer.valueDate = "2025-01-12"

* item[=].item[=].item[+].linkId = "horaCierre"
* item[=].item[=].item[=].answer.valueTime = "10:30:00"

* item[=].item[+].linkId = "datosEstablecimiento"
* item[=].item[=].item[0].linkId = "nombreServicioSalud"
* item[=].item[=].item[=].answer.valueString = "SS 1"
* item[=].item[=].item[+].linkId = "nombreEstablecimiento"
* item[=].item[=].item[=].answer.valueString = "Hospital 1"

* item[=].item[+].linkId = "tipoCierre"
* item[=].item[=].item[0].linkId = "opciones"
* item[=].item[=].item[=].answer.valueCoding = $Opciones#1 "Cierra Caso"

* item[=].item[+].linkId = "probSalud"
* item[=].item[=].item[0].linkId = "problemaSalud"
* item[=].item[=].item[=].answer.valueCoding = $ProbSalud#27 "CÁNCER GÁSTRICO"
* item[=].item[=].item[+].linkId = "Diagostico"
* item[=].item[=].item[=].answer.valueString = "Cáncer Gástrico"

* item[+].linkId = "profesionalResponsable"


* item[=].item[0].linkId = "identificadorProf"


* item[=].item[=].item[0].linkId = "runPrest"
* item[=].item[=].item[0].answer.valueString = "99.999.999"

* item[=].item[=].item[1].linkId = "verificadorPrest"
* item[=].item[=].item[1].answer.valueString = "4"
  
* item[=].item[+].linkId = "nombreRegistradoPrest"


* item[=].item[=].item[0].linkId = "primerApellidoPrest"
* item[=].item[=].item[=].answer.valueString = "Prestador"

* item[=].item[=].item[+].linkId = "segundoApellidoPrest"
* item[=].item[=].item[=].answer.valueString = "2oPrestador"

* item[=].item[=].item[+].linkId = "nombresPrest"
* item[=].item[=].item[=].answer.valueString = "El"



