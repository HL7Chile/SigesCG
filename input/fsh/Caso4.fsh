///////////////////////Información instancia//////////////////////////
Instance: ProsDiag 
Title: "Notificación de Informe Proceso Diagnóstico"
Description: "Formularo Caso de Uso 4: Notificación de Informe Proceso Diagnóstico"
InstanceOf: Questionnaire
Usage: #example

* status = #draft
* version = "0.1.0"

* status = #draft
* date = "2024-10-16"
* publisher = "HL7 Chile"


* item[0].linkId = "datosPaciente"
* item[=].text = "Datos del paciente"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "identificacionPac"
* item[=].item[=].text = "RUN del Paciente"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "runPac"
* item[=].item[=].item[=].text = "Número RUN de identificación"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "verificador"
* item[=].item[=].item[=].text = "Dígito verificador del RUN"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nombreRegistrado"
* item[=].item[=].text = "Nombre del Paciente"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "primerApellido"
* item[=].item[=].item[=].text = "Primer apellido del paciente"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "segundoApellido"
* item[=].item[=].item[=].text = "Segundo apellido del paciente"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "nombresPac"
* item[=].item[=].item[=].text = "Nombres del paciente"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true

* item[+].linkId = "profesionalSolicitante"
* item[=].text = "Datos del profesional notificador"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "identificadorProf"
* item[=].item[=].text = "Identificación del profesional notificador"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "runPrest"
* item[=].item[=].item[=].text = "Número RUN de identificación del prestador"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "verificadorPrest"
* item[=].item[=].item[=].text = "Dígito verificador del RUN del prestador"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
  
* item[=].item[+].linkId = "nombreRegistradoPrest"
* item[=].item[=].text = "Nombre del Prestador"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "primerApellidoPrest"
* item[=].item[=].item[=].text = "Primer apellido del prestador"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "segundoApellidoPrest"
* item[=].item[=].item[=].text = "Segundo apellido del prestador"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "nombresPrest"
* item[=].item[=].item[=].text = "Nombres del prestador"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true

* item[+].linkId = "NotiInform"
* item[=].text = "Datos de la notificación de un informe"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "identificador"
* item[=].item[=].text = "Identificador de la Notificación de Informe"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "numeroFolio"
* item[=].item[=].item[=].text = "Número de folio del documento de informe"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[0].linkId = "fechas"
* item[=].item[=].text = "Fecha en la cual se notifica el informe"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "fechaCreacion"
* item[=].item[=].item[=].text = "Fecha de Creación del Informe"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "horaCreacion"
* item[=].item[=].item[=].text = "Hora de Creación del Informe"
* item[=].item[=].item[=].type = #time
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "organizacion"
* item[=].item[=].text = "Establecimiento que genera el informe"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nombreServicioSalud"
* item[=].item[=].item[=].text = "Nombre del Servicio de Salud al que pertenece el establecimiento que genera el informe"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "nombreEstablecimiento"
* item[=].item[=].item[=].text = "Nombre del establecimiento que notifica"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true


* item[=].item[+].linkId = "problemaDiag"
* item[=].item[=].text = "Problema o diagnóstico notificado"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "problemaSalud"
* item[=].item[=].item[=].text = "Problema de Salud Indicado"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSProbSalud"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "confDiag"
* item[=].item[=].item[=].text = "Estado de la confirmación del diagnóstico"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "fundDiag"
* item[=].item[=].item[=].text = "Fundamento diagnóstico expresado"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false

* item[=].item[+].linkId = "tratamiento"
* item[=].item[=].text = "Tratamiento e indicaciones al paciente"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "tratamiento"
* item[=].item[=].item[=].text = "Tratamiento indicado"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "indicaciones"
* item[=].item[=].item[=].text = "Indicaciones al tratamiento "
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true