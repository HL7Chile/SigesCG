///////////////////////Información instancia//////////////////////////
Instance: CierreNotifSG 
Title: "Notificación de Cierre de Caso"
Description: "Formularo Caso de Uso 5: Notificación de cierre de caso GES / Excepción de GO / Cierre de GO"
InstanceOf: Questionnaire
Usage: #example

* status = #draft
* version = "0.1.0"

* status = #draft
* date = "2024-10-16"
* publisher = "HL7 Chile"


// Estos Datos no estan en el modelo lógico!!

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

* item[+].linkId = "datosCierre"
* item[=].text = "Datos asociados al cierre del caso o a la Excpción de Garantía "
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "fechas"
* item[=].item[=].text = "Fechas asociadas a la prestación otorgada"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "fechaCierre"
* item[=].item[=].item[=].text = "Fecha en la cual se cierra el caso o GO"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "horaCierre"
* item[=].item[=].item[=].text = "Hora en la cual se cierra el caso o GO"
* item[=].item[=].item[=].type = #time
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "datosEstablecimiento"
* item[=].item[=].text = "Datos del establecimiento notificador"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "nombreServicioSalud"
* item[=].item[=].item[=].text = "Nombre del Servicio de Salud que notifica"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "nombreEstablecimiento"
* item[=].item[=].item[=].text = "Nombre del establecimiento que notifica"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "tipoCierre"
* item[=].item[=].text = "Tipo de Cierre o Excepción de Garantía"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "opciones"
* item[=].item[=].item[=].text = "Opciones para Cierre o Extensión"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/sigescg/ValueSet/VSOpcionesCierre"
* item[=].item[=].item[=].required = true



* item[=].item[+].linkId = "probSalud"
* item[=].item[=].text = "Problema o diagnóstico notificado"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "problemaSalud"
* item[=].item[=].item[=].text = "Problema de Salud Indicado"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/sigescg/ValueSet/VSProbSalud"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "Diagostico"
* item[=].item[=].item[=].text = "Diagnóstico determinado"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false

* item[+].linkId = "profesionalResponsable"
* item[=].text = "Datos del profesional responsable"
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









