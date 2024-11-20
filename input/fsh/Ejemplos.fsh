Alias: $Comunas = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL
Alias: $Provincias = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL
Alias: $Regiones = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL
Alias: $Sexo-Nac = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSSexoListadoDeis
Alias: $Prais = https://tipogarantia.cl/prais
Alias: $Prevision = https://tipogarantia.cl/prevision
Alias: $Especialidades = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSEspecialidadesDeisCL
Alias: $Razones = https://fonasa.cl/razones
Alias: $Sospecha = https://fonasa.cl/sospecha
Alias: $Examen = https://fonasa.cl/examen
Alias: $Estado-Caso = https://fonasa.cl/estadocaso

Instance: Caso1
InstanceOf: DatosSigesCG
Title: "Ejemplo formulario de Creación"
Description: "Ejemplo de datos para la creación de un formulario"

Usage: #example

* identifier.value = "FFBA223B"
* identifier.system = "http://fonasa.cl/verificacion/identificador"
* questionnaire = "https://hl7chile.cl/fhir/ig/sigescg/Questionnaire/CreacionCaso"
* status = #completed

* authored = "2024-10-16T14:30:00Z"


* item[0].linkId = "datosPaciente"


* item[0].item[0].linkId = "identificacionPac"




* item[0].item[0].item[0].linkId = "runPac"
* item[0].item[0].item[0].answer.valueString = "66.666.666"
* item[0].item[0].item[+].linkId = "verificador"
* item[0].item[0].item[=].answer.valueString = "k"

* item[0].item[1].linkId = "nombreRegistrado"


* item[0].item[1].item[0].linkId = "primerApellido"
* item[0].item[1].item[0].answer.valueString = "EjemploAp"
* item[0].item[1].item[1].linkId = "segundoApellido"
* item[0].item[1].item[1].answer.valueString = "EjemploSegundo"
* item[0].item[1].item[2].linkId = "nombresPac"
* item[0].item[1].item[2].answer[0].valueString = "nombre1"
* item[0].item[1].item[2].answer[+].valueString = "nombre2"

* item[0].item[2].linkId = "direccionPac"


* item[0].item[2].item[0].linkId = "calleNumeroDirPac"
* item[0].item[2].item[0].answer.valueString = "Calle mia, 666, casa C"

* item[0].item[2].item[1].linkId = "communaDirPac"
* item[0].item[2].item[1].answer.valueCoding = $Comunas#13402 "Buin"


* item[0].item[2].item[2].linkId = "provinciaDirPac"
* item[0].item[2].item[2].answer.valueCoding.system = $Provincias#131 "Santiago"


* item[0].item[2].item[3].linkId = "regionDirPac"
* item[0].item[2].item[3].answer.valueCoding.system = $Regiones#13 "Metropolitana de Santiago"


* item[0].item[3].linkId = "datoContactoPac"


* item[0].item[3].item[0].linkId = "emailPac"
* item[0].item[3].item[0].answer.valueString = "yo@yo.cl"

* item[0].item[3].item[1].linkId = "numeroTelPac"
* item[0].item[3].item[1].answer.valueString = "+56 9666666"

* item[1].linkId = "datosDemogAdic"


* item[1].item[0].linkId = "sexoNacimiento"
* item[1].item[0].answer.valueCoding = $Sexo-Nac#93 "No Informado"


* item[1].item[1].linkId = "fechaNacimiento"
* item[1].item[1].answer.valueDate = "1980-05-22"

* item[1].item[2].linkId = "edadPaciente"
* item[1].item[2].answer.valueInteger = 35

* item[2].linkId = "garantiaPac"


* item[2].item[0].linkId = "tipoGarantia"


* item[2].item[0].item[0].linkId = "codigoPrais"
* item[2].item[0].item[0].answer.valueCoding.system = $Prais#12 "G1"


* item[2].item[1].linkId = "previsionPac"


* item[2].item[1].item[0].linkId = "tipoPrevision"
* item[2].item[1].item[0].answer.valueCoding.system = $Prevision#01 "A"


* item[3].linkId = "solicitudCaso"


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
* item[=].item[3].item[1].answer.valueCoding.system = $Sospecha#1 "A"


* item[=].item[3].item[2].linkId = "hipotesisDiagnostica"
* item[=].item[3].item[2].answer.valueString = "Cancer Gástrico"

* item[=].item[3].item[3].linkId = "fundamentoDiagnostico"
* item[=].item[3].item[3].answer.valueString = "Resultado examenes"

* item[=].item[4].linkId = "procedimientos"


* item[=].item[4].item[0].linkId = "examenesRealizados"
* item[=].item[4].item[0].answer.valueCoding.system = $Examen#222 "ex 1"


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

    
