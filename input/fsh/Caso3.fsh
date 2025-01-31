///////////////////////Información instancia//////////////////////////
Instance: SolEndoscop 
Title: "Notificación Solicitud Endoscopía (Orden de Atención)"
Description: "Formularo Caso de Uso 3: Notificación de Solicitud de una Endoscopía"
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




* item[+].linkId = "solicitudAtencionPrest"
* item[=].text = "Datos de solicitud de una atención o prestación"
* item[=].type = #group
* item[=].required = true

* item[=].item[+].linkId = "tipoPrestSol"
* item[=].item[=].text = "Tipo de prestación solicitada"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nombrePrestacion"
* item[=].item[=].item[=].text = "Nombre de la Prestación en texto libre"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "codPrestacion"
* item[=].item[=].item[=].text = "Código de la Prestación solicitada"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/sigescg/ValueSet/VSPrestacion"
* item[=].item[=].item[=].required = false

* item[=].item[+].linkId = "fechaSol"
* item[=].item[=].text = "Fecha de la solicitud de orden"
* item[=].item[=].type = #group
* item[=].item[=].required = true



* item[=].item[=].item[0].linkId = "fechaSolOrd"
* item[=].item[=].item[=].text = "Fecha en la cual la orden fue solicitada"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "horaSolOrd"
* item[=].item[=].item[=].text = "Hora en la cual la orden fue solicitada"
* item[=].item[=].item[=].type = #time
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "origenDest"
* item[=].item[=].text = "Datos de origen y destino de la solicitud"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "nombreServicioSaludOrg"
* item[=].item[=].item[=].text = "Nombre del Servicio de Salud que solicita el servicio o prestación"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "nombreEstablecimientoOrg"
* item[=].item[=].item[=].text = "Nombre del establecimiento que solicita el servicio o prestación"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true


* item[=].item[=].item[+].linkId = "nombreServicioSaludDestino"
* item[=].item[=].item[=].text = "Nombre del Servicio de Salud al cual se le solicita el servicio o prestación"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "nombreEstablecimientoDestino"
* item[=].item[=].item[=].text = "Nombre de la establecimiento al cual se le solicita el servicio o prestación"
* item[=].item[=].item[=].type = #string
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

* item[=].item[=].item[+].linkId = "referidoPorOtro"
* item[=].item[=].item[=].text = "Texto de otra opción para referido por"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].enableWhen[0].question = "referidoPor"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[0].answerCoding.system = "https://hl7chile.cl/fhir/ig/sigescg/CodeSystem/CSDerivadoPara"
* item[=].item[=].item[=].enableWhen[0].answerCoding.code = #5

* item[=].item[=].item[+].linkId = "hipotesisDiagnostica"
* item[=].item[=].item[=].text = "Diagnóstico del cual se sospecha el paciente tiene"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

  
