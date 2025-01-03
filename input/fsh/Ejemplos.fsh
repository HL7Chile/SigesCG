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

Instance: Caso1
InstanceOf: DatosSigesCG
Title: "Ejemplo formulario de Notificación de atención"
Description: "Ejemplo de datos para la notificación de una atención  (Caso 1)"

Usage: #example

* extension[TipoDoc].url = "https://hl7chile.cl/fhir/ig/sigescg/StructureDefinition/TipoDoc"
* extension[TipoDoc].valueCodeableConcept = $TipoDoc#1 "Solicitud de interconsulta SIC"

* identifier.value = "FFBA223B"
* identifier.system = "http://fonasa.cl/verificacion/identificador"
* questionnaire = "https://hl7chile.cl/fhir/ig/sigescg/Questionnaire/CreacionCaso"
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

* item[=].item[+].linkId = "direccionPac"


* item[=].item[=].item[0].linkId = "calleNumeroDirPac"
* item[=].item[=].item[0].answer.valueString = "Calle mia, 666, casa C"

* item[=].item[=].item[1].linkId = "communaDirPac"
* item[=].item[=].item[1].answer.valueCoding = $Comunas#13402 "Buin"


* item[=].item[=].item[2].linkId = "provinciaDirPac"
* item[=].item[=].item[2].answer.valueCoding.system = $Provincias#131 "Santiago"


* item[=].item[=].item[3].linkId = "regionDirPac"
* item[=].item[=].item[3].answer.valueCoding.system = $Regiones#13 "Metropolitana de Santiago"


* item[=].item[+].linkId = "datoContactoPac"


* item[=].item[=].item[0].linkId = "emailPac"
* item[=].item[=].item[0].answer.valueString = "yo@yo.cl"

* item[=].item[=].item[1].linkId = "numeroTelPac"
* item[=].item[=].item[1].answer.valueString = "+56 9666666"

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

* item[=].item[=].item[=].answer.valueCoding = $Prevision#1 "FONASA"

* item[+].linkId = "solicitudCaso"


* item[=].item[0].linkId = "fechas"


* item[=].item[0].item[0].linkId = "fechaCreacionCaso"
* item[=].item[0].item[0].answer.valueDate = "2024-10-16"

* item[=].item[0].item[1].linkId = "horaCreacionCaso"
* item[=].item[0].item[1].answer.valueTime = "16:00:00"

* item[=].item[1].linkId = "establecimientos"


* item[=].item[1].item[0].linkId = "servicioSaludNotificacion"
* item[=].item[1].item[0].answer.valueString = "Servicio de Salud Metropolitano Occidente"

* item[=].item[1].item[1].linkId = "establecimientoOrigen"
* item[=].item[1].item[1].answer.valueString = "Hospital Bueno"

* item[=].item[1].item[2].linkId = "establecimientoDestino"
* item[=].item[1].item[2].answer.valueString = "Hospital Más Bueno"

* item[=].item[1].item[3].linkId = "unidadClinicaDestino"
* item[=].item[1].item[3].answer.valueString = "Oncología"

* item[=].item[2].linkId = "especialidades"


* item[=].item[2].item[0].linkId = "especialidadOrigen"
* item[=].item[2].item[0].answer.valueCoding.system = $Especialidades#01 "Anatomía Patológica"


* item[=].item[2].item[1].linkId = "especialidadDestino"
* item[=].item[2].item[1].answer.valueCoding = $Especialidades#45 "Oncología Médica"


* item[=].item[3].linkId = "antecedentes"


* item[=].item[3].item[0].linkId = "referidoPor"
* item[=].item[3].item[0].answer.valueCoding.system = $Razones#01 "Cáncer Gastrico"


* item[=].item[3].item[1].linkId = "sospechaGes"
* item[=].item[3].item[1].answer.valueBoolean = true


* item[=].item[3].item[2].linkId = "hipotesisDiagnostica"
* item[=].item[3].item[2].answer.valueString = "Cancer Gástrico"

* item[=].item[3].item[3].linkId = "fundamentoDiagnostico"
* item[=].item[3].item[3].answer.valueString = "Resultado examenes"

* item[=].item[4].linkId = "procedimientos"


* item[=].item[4].item[0].linkId = "examenesRealizados"
* item[=].item[4].item[0].answer.valueString = "Examen 1"


//* item[=].item[4].item[0].answer[1].valueCoding.system = $Examen#33 "ex 2"


* item[=].item[5].linkId = "IdentificadoresCaso"


* item[=].item[5].item[0].linkId = "numeroFolio"
* item[=].item[5].item[0].answer.valueString = "F32"

* item[=].item[5].item[1].linkId = "numeroCaso"
* item[=].item[5].item[1].answer.valueString = "FFBA223B"

* item[=].item[6].linkId = "estadoCaso"


* item[=].item[6].item[0].linkId = "codEstadoCaso"
* item[=].item[6].item[0].answer.valueCoding.system = $Estado-Caso#01 "progreso"


* item[+].linkId = "profesionalNotificador"


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

    




Instance: Caso2
InstanceOf: DatosSigesCG
Title: "Ejemplo de formulario de notificación de atención"
Description: "Ejemplo de datos para la creación de un formulario (Caso 2)"

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

* item[=].item[+].linkId = "direccionPac"


* item[=].item[=].item[0].linkId = "calleNumeroDirPac"
* item[=].item[=].item[0].answer.valueString = "Calle mia, 666, casa C"

* item[=].item[=].item[1].linkId = "communaDirPac"
* item[=].item[=].item[1].answer.valueCoding = $Comunas#13402 "Buin"


* item[=].item[=].item[2].linkId = "provinciaDirPac"
* item[=].item[=].item[2].answer.valueCoding.system = $Provincias#131 "Santiago"


* item[=].item[=].item[3].linkId = "regionDirPac"
* item[=].item[=].item[3].answer.valueCoding.system = $Regiones#13 "Metropolitana de Santiago"


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


* item[=].item[+].linkId = "IdentificadoresCaso"


* item[=].item[=].item[0].linkId = "numeroCaso"
* item[=].item[=].item[0].answer.valueString = "FFBA223B"


* item[+].linkId = "Prestacion"

* item[=].item[0].linkId = "origenPrestacion"
* item[=].item[=].item[0].linkId = "nombreOrganizacionOrg"
* item[=].item[=].item[=].answer.valueString = "Hospital XXXX"

* item[=].item[0].linkId = "origenPrestacion"
* item[=].item[=].item[+].linkId = "nombreServicioSaludOrg"
* item[=].item[=].item[=].answer.valueString = "Servicio de Salud YYYYY"

* item[=].item[+].linkId = "PrestacionEj"

* item[=].item[=].item[0].linkId = "nombreOrganizacionEje"
* item[=].item[=].item[=].answer.valueString = "Centro de Salud AAAAA"

* item[=].item[=].item[+].linkId = "nombreServicioSaludEje"
* item[=].item[=].item[=].answer.valueString = "Servicio de Salud BBBB"

* item[=].item[+].linkId = "fechas"
* item[=].item[=].item[0].linkId = "fechaInicio"
* item[=].item[=].item[=].answer.valueDate = "2024-11-01"

* item[=].item[=].item[+].linkId = "fechaFin"
* item[=].item[=].item[=].answer.valueDate = "2024-11-15"

* item[=].item[+].linkId = "tipoPrest"
* item[=].item[=].item[0].linkId = "nombrePrestacion"
* item[=].item[=].item[=].answer.valueString = "Prestación AAA"

* item[=].item[=].item[+].linkId = "codPrestacion"
* item[=].item[=].item[=].answer.valueCoding = $Prestacion#1 "Prestacion1"




Instance: Caso3
InstanceOf: DatosSigesCG
Title: "Ejemplo formulario de solicitud de endoscopía"
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

* item[+].linkId = "profesionalNotificador"


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


* item[+].linkId = "SolicitudAtencionPrest"
* item[=].item[+].linkId = "tipoPrestSol"

* item[=].item[=].item[0].linkId = "nombrePrestacion"
* item[=].item[=].item[=].answer.valueString = "Prestacion1"

* item[=].item[=].item[+].linkId = "verificadorPrest"
* item[=].item[=].item[=].answer.valueCoding = $Prestacion#1 "Prestacion1"

* item[=].item[+].linkId = "fechaSol"

* item[=].item[=].item[0].linkId = "fechaSolOrd"
* item[=].item[=].item[=].answer.valueString = "2024-10-11"

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

* item[+].linkId = "profesionalNotificador"


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
* item[=].item[0].linkId = "fechas"

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

* item[=].item[+].linkId = "tratamiento"
* item[=].item[=].item[0].linkId = "tratamientoInd"
* item[=].item[=].item[=].answer.valueString = "Tratamiento 1"
* item[=].item[=].item[+].linkId = "indicaciones"
* item[=].item[=].item[=].answer.valueString = "Indicaciones 1"


Instance: Caso5
InstanceOf: DatosSigesCG
Title: "Ejemplo formulario de etapificación"
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


* item[+].linkId = "Procedimiento"
* item[=].item[+].linkId = "tipoPrestSol"

* item[=].item[=].item[0].linkId = "nombrePrestacion"
* item[=].item[=].item[=].answer.valueString = "Prestacion1"

* item[=].item[=].item[+].linkId = "codPrestacion"
* item[=].item[=].item[=].answer.valueCoding = $Prestacion#1 "Prestacion1"

* item[=].item[=].item[0].linkId = "numFolioPrestacion"
* item[=].item[=].item[=].answer.valueString = "123ABC"

* item[=].item[+].linkId = "fechas"   

* item[=].item[=].item[0].linkId = "fechaEjec"
* item[=].item[=].item[=].answer.valueString = "2024-12-08"



* item[=].item[+].linkId = "razonDeriv"
* item[=].item[=].item[0].linkId = "referidoPor"
* item[=].item[=].item[=].answer.valueCoding = $ReferidoPor#1 "Confirmación Diagnóstica"



Instance: Caso6
InstanceOf: DatosSigesCG
Title: "Ejemplo formulario de notificación quirúrjica"
Description: "Ejemplo de datos para la creación de un formulario  (Caso 6)"

Usage: #example

* extension[TipoDoc].url = "https://hl7chile.cl/fhir/ig/sigescg/StructureDefinition/TipoDoc"
* extension[TipoDoc].valueCodeableConcept = $TipoDoc#1 "Solicitud de interconsulta SIC"

* identifier.value = "FFBA223A"
* identifier.system = "http://fonasa.cl/verificacion/identificador"
* questionnaire = "https://hl7chile.cl/fhir/ig/sigescg/Questionnaire/NotOrdQuir"
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


* item[+].linkId = "datosNotifQuir"
* item[=].item[+].linkId = "tipoPrestSol"

* item[=].item[=].item[0].linkId = "nombrePrestacion"
* item[=].item[=].item[=].answer.valueString = "Prestacion1"

* item[=].item[=].item[+].linkId = "codPrestacion"
* item[=].item[=].item[=].answer.valueCoding = $Prestacion#1 "Prestacion1"


* item[=].item[+].linkId = "fechas"   

* item[=].item[=].item[0].linkId = "fechaEjec"
* item[=].item[=].item[=].answer.valueString = "2024-12-08"

* item[=].item[+].linkId = "origenDest"
* item[=].item[=].item[0].linkId = "nombreServicioSaludOrg"
* item[=].item[=].item[=].answer.valueString = "Servicio 1"
* item[=].item[=].item[+].linkId = "nombreEstablecimientoOrg"
* item[=].item[=].item[=].answer.valueString = "Establecimiento 1"
* item[=].item[=].item[+].linkId = "nombreServicioSaludDestino"
* item[=].item[=].item[=].answer.valueString = "Servicio 2"




* item[=].item[+].linkId = "razonDeriv"
* item[=].item[=].item[0].linkId = "referidoPor"
* item[=].item[=].item[=].answer.valueCoding = $ReferidoPor#1 "Confirmación Diagnóstica"
* item[=].item[=].item[+].linkId = "hipDiag"
* item[=].item[=].item[=].answer.valueString = "Cáncer Gástrico"


Instance: Caso7
InstanceOf: DatosSigesCG
Title: "Ejemplo formulario de notificación procedimiento post quirúrjico"
Description: "Ejemplo de datos para la creación de un formulario  (Caso 7)"

Usage: #example

* extension[TipoDoc].url = "https://hl7chile.cl/fhir/ig/sigescg/StructureDefinition/TipoDoc"
* extension[TipoDoc].valueCodeableConcept = $TipoDoc#1 "Solicitud de interconsulta SIC"

* identifier.value = "FFBA223A"
* identifier.system = "http://fonasa.cl/verificacion/identificador"
* questionnaire = "https://hl7chile.cl/fhir/ig/sigescg/Questionnaire/NotProcPost"
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


* item[+].linkId = "datosProc"
* item[=].item[+].linkId = "tipoPresEje"

* item[=].item[=].item[0].linkId = "nombrePrestacion"
* item[=].item[=].item[=].answer.valueString = "Prestacion1"

* item[=].item[=].item[+].linkId = "codPrestacion"
* item[=].item[=].item[=].answer.valueCoding = $Prestacion#1 "Prestacion1"


* item[=].item[+].linkId = "fechas"   

* item[=].item[=].item[0].linkId = "fechaEjec"
* item[=].item[=].item[=].answer.valueString = "2024-12-08"

* item[=].item[+].linkId = "origenDest"
* item[=].item[=].item[0].linkId = "nombreServicioSaludOrg"
* item[=].item[=].item[=].answer.valueString = "Servicio 1"
* item[=].item[=].item[+].linkId = "nombreEstablecimientoOrg"
* item[=].item[=].item[=].answer.valueString = "Establecimiento 1"
* item[=].item[=].item[+].linkId = "nombreServicioSaludDestino"
* item[=].item[=].item[=].answer.valueString = "Servicio 2"




* item[=].item[+].linkId = "razonDeriv"
* item[=].item[=].item[0].linkId = "referidoPor"
* item[=].item[=].item[=].answer.valueCoding = $ReferidoPor#1 "Confirmación Diagnóstica"
* item[=].item[=].item[+].linkId = "hipDiag"
* item[=].item[=].item[=].answer.valueString = "Cáncer Gástrico"