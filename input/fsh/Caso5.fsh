///////////////////////Información instancia//////////////////////////
Instance: CierreNotifSG 
Title: "Notificación de Cierre de Caso"
Description: "Formularo Caso de Uso 5: Notificación de cierre de caso GES"
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

* item[+].linkId = "profesionalNotificador"
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


* item[+].linkId = "Procedimiento"
* item[=].text = "Datos sobre la ejecusión de prestaciones ejecutadas en paciente"
* item[=].type = #group
* item[=].required = true
* item[=].repeats = true

* item[=].item[+].linkId = "tipoPrestSol"
* item[=].item[=].text = "Tipo de prestación solicitada"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nombrePrestacion"
* item[=].item[=].item[=].text = "Nombre de la Prestación otorgada en texto libre"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "codPrestacion"
* item[=].item[=].item[=].text = "Código de la Prestación otorgada"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/sigescg/ValueSet/VSPrestacion"
* item[=].item[=].item[=].required = false

* item[=].item[=].item[+].linkId = "numFolioPrestacion"
* item[=].item[=].item[=].text = "Número del folio de la pestación otorgada"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "fechas"
* item[=].item[=].text = "Fechas asociadas a la prestación otorgada"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "fechaEjec"
* item[=].item[=].item[=].text = "Fecha en la cual la prestación fue otorgada"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].required = true




* item[=].item[+].linkId = "razonDeriv"
* item[=].item[=].text = "Datos que justifican la derivación"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "referidoPor"
* item[=].item[=].item[=].text = "El paciente es derivado para?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/sigescg/ValueSet/VSDerivadoPara"
* item[=].item[=].item[=].required = true

